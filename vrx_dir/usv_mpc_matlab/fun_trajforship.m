function [Acoeff, Bcoeff] = fun_trajforship(wpt)
% trajG Quadratic programming for way-point trajectory generation.
%            Two cubic polynominals are fitted to two way-points where the 
%            speed and position are specified. The starting time is t0 while
%            the arrival time t1 at next way-point can be temporal result
%            from scheduling
%
%            Cubic spline between two points:
%            x(t) = a3*t^3 + a2*t^2 + a1*t + a0
%            y(t) = b3*t^3 + b2*t^2 + b1*t + b0

% Author:    H. Zheng
% Date:      18 July 2013
% Revisions: 

% --------------------------------------------------------------------
% MAIN LOOP for computation of the the polynominal parameters x = [a3 a2 a1 a0 b3 b2 b1 b0]'
% --------------------------------------------------------------------
for i=1:length(wpt.x)-1
       
    t0 = wpt.time(i);
    t1 = wpt.time(i+1);
    
    x0 = wpt.x(i);
    x1 = wpt.x(i+1);
    
    y0 = wpt.y(i);
    y1 = wpt.y(i+1);
    
    U0 = wpt.uspeed(i);
    U1 = wpt.uspeed(i+1);
    
    psi0 = wpt.psi(i);
    psi1 = wpt.psi(i+1);
  
    
    y = [x0 x1 y0 y1 U0*cos(psi0) U0*sin(psi0) U1*cos(psi1) U1*sin(psi1)]';
    
    A = [t0^3    t0^2 t0 1 0 0 0 0
        t1^3    t1^2 t1 1 0 0 0 0
        0 0 0 0 t0^3 t0^2 t0 1
        0 0 0 0 t1^3 t1^2 t1 1  
        3*t0^2 2*t0   1  0 0 0 0 0 
        0 0 0 0 3*t0^2 2*t0   1  0      
        3*t1^2 2*t1   1  0 0 0 0 0 
        0 0 0 0 3*t1^2 2*t1   1  0];

    
    X = inv(A) * y;
    
    Acoeff(i,:) = X(1:4);
    Bcoeff(i,:) = X(5:8);

end

end
