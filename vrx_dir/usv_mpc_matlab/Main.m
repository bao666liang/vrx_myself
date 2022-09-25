function NMPC_test0319
% 
%     addpath('./nmpcroutine');
    clear all;
    close all;
  wpt.time = [0 5 10 15 20 25 30 35 40 50 55 60 65 70 75 80];
    wpt.x = [0 25 50 100 150 175 200 225 250 275 300 325 350 375 400 425];
    wpt.y = [0 1 2 4 5 6 7 10 15 25 30 35 40 45 50 60];
    for i=1:length(wpt.x)-1
            wpt.psi(i) = atan2(wpt.y(i+1)-wpt.y(i),wpt.x(i+1)-wpt.x(i));
    end
    wpt.psi(length(wpt.x)) = wpt.psi(i);
    wpt.uspeed = [0 0.5 1 2 3 4 5 6 7 8 9 10 10 10 10 10];
    wpt.vspeed = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
    for i = length(wpt.psi)-1
        wpt.rspeed(i) = (wpt.psi(i+1) - wpt.psi(i))/1;
    end
    wpt.rspeed(length(wpt.x)) = wpt.rspeed(i);
    [Acoeff, Bcoeff] = fun_trajforship(wpt);
    %controller parameters
    N             = 5;
    Nu            = N;
    mpc_end       = max(wpt.time);
    T             = 1;
    mpciterations = mpc_end/T;
    
   X0 = [0, 0, 0.380506377112365, 0, 0, 0];
   u0 = zeros(2, N);
   xmeasure = X0;
   tmeasure = 0;


   
    tol_opt       = 1e-8;
    opt_option    = 1;
    iprint        = 2;
    type          = 'differential equation';
    atol_ode_real = 1e-12;
    rtol_ode_real = 1e-12;
    atol_ode_sim  = 1e-4;
    rtol_ode_sim  = 1e-4;

   %desired trajectories by sampling
    Xref   = [];
    Yref   = [];
    PSiref = [];
    Uref   = [];
    Vref   = [];
    Rref   = [];
    for i=1:size(Acoeff,1)
        for t = wpt.time(i):T:wpt.time(i+1)-T;
        Xref = [Xref,  polyval(Acoeff(i,:),t)];
        Yref = [Yref,  polyval(Bcoeff(i,:),t)];
        PSiref = [PSiref, wpt.psi(i)];
        Uref = [Uref,  wpt.uspeed(i)];
        Vref = [Vref,  wpt.vspeed(i)];
        end
        end
        for i=1:size(PSiref, 2)-1 
         Rref = [Rref,  (PSiref(1, i+1) - PSiref(1, i))];
        end
       Rref = [Rref, 0];
    yref = [Xref', Yref', PSiref', Uref', Vref', Rref'];% u. v, r, x, y, z
    yref(size(Xref')+1:size(Xref')+N,:) = repmat([wpt.x(end), wpt.y(end), wpt.psi(end), Uref(:, end), Vref(:, end), Rref(:, end)],N,1);
    
    [t, x, u] =nmpc_m(@runningcosts, @terminalcosts, @constraints, ...
         @terminalconstraints, @linearconstraints, @system, ...
          mpciterations, N, T, tmeasure, xmeasure, u0, yref, ...
         tol_opt, opt_option, ...
         type, atol_ode_real, rtol_ode_real, atol_ode_sim, rtol_ode_sim, ...
         iprint, @printHeader, @printClosedloopData, @plotTrajectories);
     
% [xdot,U] = mariner(x,ui,U0)
% dx = system_ct(t, x, u, T)
   figure(1);
    subplot(211)
    plot(t,x(:,1),'b','LineWidth',2);
    hold on;
    plot(t,yref(1:size(t,1),1),'-.r','LineWidth',2)
    xlabel('time t (s)');
    ylabel('Longitudinal position x (m)');
    legend('Controlled results by NMPC','Reference track')
    
    subplot(212)
    plot(t,x(:,2),'b','LineWidth',2);
    hold on;
    plot(t,yref(1:size(t,1),2),'-.r','LineWidth',2)
    xlabel('time t (s)');
    ylabel('Lateral position y (m)');
    legend('Controlled results by NMPC','Reference track')
    
    figure(2);
    subplot(211)
    plot(t(2:end),(x(2:end,1)-yref(1:(size(t,1)-1),1)),'r','LineWidth',2)
    hold on
    plot(t(2:end),(x(2:end,2)-yref(1:(size(t,1)-1),2)),'b','LineWidth',2);
    xlabel('time t (s)');
    ylabel('Tracking errors: {x_{error}} and {y_{error}} (m)');
    legend('x tracking error','y tracking error')
    subplot(212)
    plot(t(2:end),sqrt((x(2:end,1)-yref(1:(size(t,1)-1),1)).^2+(x(2:end,2)-yref(1:(size(t,1)-1),2)).^2),'LineWidth',2);
    xlabel('time t (s)');
    ylabel('Distance Error {d_{error}} (m)');
   
    figure(3);
    plot(x(:,1),x(:,2),'b','LineWidth',2);
    hold on;
    plot(yref(:,1),yref(:,2),'-.r','LineWidth',2)
    xlabel('Longitudinal position x (m)')
    ylabel('Lateral position y (m)')
    legend('Controlled results by NMPC','Reference track')
    
    figure(4);
    subplot(311)
    plot(t,u(1,:),'LineWidth',2);
    ylabel('Surge force {f_u}(N)')
    xlabel('time t (s)')
    subplot(312)
    plot(t,u(2,:),'LineWidth',2);
    ylabel('Yaw moment {t_r} (Nm)')
    xlabel('time  t (s)')  
    
%     %data for comparison with linear MPC
%     %display maximum error
%     max_error_x=max(x(2:end,1)-yref(1:(size(t,1)-1),1))
%     max_error_y=max(x(2:end,2)-yref(1:(size(t,1)-1),2))
%     max_error_distance=max(sqrt((x(2:end,1)-yref(1:(size(t,1)-1),1)).^2+(x(2:end,2)-yref(1:(size(t,1)-1),2)).^2))
%     %display minimum error
%     min_error_x=min(x(2:end,1)-yref(1:(size(t,1)-1),1))
%     min_error_y=min(x(2:end,2)-yref(1:(size(t,1)-1),2))
%     min_error_distance=min(sqrt((x(2:end,1)-yref(1:(size(t,1)-1),1)).^2+(x(2:end,2)-yref(1:(size(t,1)-1),2)).^2))
%     %average error in distance
%     mean_distance=mean(sqrt((x(2:end,1)-yref(1:(size(t,1)-1),1)).^2+(x(2:end,2)-yref(1:(size(t,1)-1),2)).^2))
%     %standard deviation in distance
%     std_distance=std(sqrt((x(2:end,1)-yref(1:(size(t,1)-1),1)).^2+(x(2:end,2)-yref(1:(size(t,1)-1),2)).^2))
%     
%     %display total simulation time
%     cal_time
%     
%     %save data for later use
%     save('time','t');
%     save('outputs','x');
%     save('yref_nmpc','yref');
%     save('inputs_nmpc','u');
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Definition of the NMPC functions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function cost = runningcosts(t, x, yref, u)  
    error = [(x(1)-yref(:, 1)) (x(2)-yref(:, 2)) (x(3)-yref(:, 3)) (x(4)-yref(:, 4)) (x(5)-yref(:, 5)) (x(6)-yref(:, 6))];
    Q     = 100 * eye(6, 6);
    cost = error*Q*error';
end

function cost = terminalcosts(t, x, yref, u)
     %error = [(x(1)-yref(:, 1)) (x(2)-yref(:, 2)) (x(3)-yref(:, 3)) (x(4)-yref(:, 4)) (x(5)-yref(:, 5)) (x(6)-yref(:, 6))];
    error = [(x(1)-yref(:, 1)) (x(2)-yref(:, 2)) (x(3)-yref(:, 3)) (x(4)-yref(:, 4)) (x(5)-yref(:, 5)) (x(6)-yref(:, 6))];
     Q     = 100 * eye(6, 6);
    cost = error*Q*error';
end

function [c,ceq] = constraints(t, x, u)
    c = [];
    ceq  = [];
end

function [c,ceq] = terminalconstraints(t, x)
    c = [];
    ceq  = [];
end

function [A, b, Aeq, beq, lb, ub] = linearconstraints(t, x, u)
    A   = [];
    b   = [];
    Aeq = [];
    beq = [];
    tau1max =  2e10;
    tau2max =  2e10;
    tau3max = 1.5;
    lb  = [-tau1max -tau2max ];
    ub  = [tau1max tau2max ];
% lb=[];
% ub=[];
end

function dx = system(t, x, u, T)

    % 3-DOF ship model
    m11 =  1.2e5; m22 =  2.179e5;
    m33 =  6.36e7;
    d11 =  2.15e4; d22 =  1.17e5;
    d33 =  8.02e6;
    
    dx = zeros(6,1);
    dx(1) = cos(x(3))*x(4)-sin(x(3))*x(5);
    dx(2) = sin(x(3))*x(4)+cos(x(3))*x(5);
    dx(3) = x(6);
    dx(4) = (m22 * x(5) * x(6) - d11 * x(4) + u(1))/m11;
    dx(5) = (-m11 * x(4) * x(6) - d22 * x(5))/m22;
    dx(6) = ((m11 - m22) * x(4) * x(5) - d33 * x(6) + u(2))/m33;
    
   
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Definition of output format
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function printHeader()
    fprintf(' k  Runtime  |    u(1)     u(2)    x(1)    x(2)    x(3)    x(4)    x(5)    x(6) ');
    fprintf('-------------------------------------------------------------------------------------------------------------\n');
end

function printClosedloopData(mpciter, u, x, trecord)
    fprintf(' %3d  %+11.4f  | %+11.4f %+11.4f  %+11.4f %+11.4f %+11.4f  %+11.4f %+11.4f %+11.4f', mpciter, trecord, ...
            u(1,1),u(2,1), x(1), x(2), x(3), x(4), x(5), x(6));
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%