#ifndef _PID_WAMV_H
#define _PID_WAMV_H
#include <math.h>

namespace control
{
    class pid_wamv
    {
    private:
        double err,last_err,detla_err=0;
        double ut;
        int count = 0;
    public:
       double pid_control(double desire,double actual,double kp,double kd);
    };
    
   double pid_wamv::pid_control(double desire,double actual,double kp,double kd)
   {
        err = desire - actual;
       
        ut = kp*err + kd*detla_err;
       
        if(count%5==0)
        {
            last_err = err;
            detla_err = err - last_err;
        }
        count++;
        return ut;
   }
} 


#endif