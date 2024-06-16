#include <math.h>
#include <stddef.h>

#include <time.h>
#include <stdlib.h>

#include "globals.h"

size_t scalar_index(const unsigned int x, const unsigned int y){
    return NX*y+x;
}

size_t field_index(const unsigned int x, const unsigned int y, const unsigned int d){
    return NX*(NY*d+y)+x;
}

void taylor_green_pointcomp(unsigned int t, unsigned int x, unsigned int y, double *r, double *u, double *v){
    double kx = 2.0*M_PI/NX;
    double ky = 2.0*M_PI/NY;
    double td = 1.0/(nu*(kx*kx+ky*ky));
    double X = x+0.5;
    double Y = y+0.5;
    double ux = -u_max*sqrt(ky/kx)*cos(kx*X)*sin(ky*Y)*exp(-1.0*t/td);
    double uy = u_max*sqrt(kx/ky)*sin(kx*X)*cos(ky*Y)*exp(-1.0*t/td);
    double P = -0.25*rho0*u_max*u_max*( (ky/kx)*cos(2.0*kx*X)+(kx/ky)*cos(2.0*ky*Y) )*exp(-2.0*t/td);
    double rho = rho0+3.0*P;
    *r = rho;
    *u = ux;
    *v = uy;
}

void taylor_green(unsigned int t, double *r, double *u, double *v){
    for(unsigned int y = 0; y < NY; ++y)
        for(unsigned int x = 0; x < NX; ++x){
            size_t sidx = scalar_index(x,y);
            taylor_green_pointcomp(t,x,y,&r[sidx],&u[sidx],&v[sidx]);
        }
    srand(time(NULL));
    r[scalar_index(rand()%128, rand()%128)] = 5;
    r[scalar_index(rand()%128, rand()%128)] = 6;
    r[scalar_index(rand()%128, rand()%128)] = 7;
    r[scalar_index(rand()%128, rand()%128)] = 8;
    r[scalar_index(rand()%128, rand()%128)] = 9;
    r[scalar_index(rand()%128, rand()%128)] = 10;
}

void init_equilibrium(double *f, double *r, double *u, double *v){
    for(unsigned int y = 0; y < NY; ++y){
        for(unsigned int x = 0; x < NX; ++x){
            double rho = r[scalar_index(x,y)];
            double ux = u[scalar_index(x,y)];
            double uy = v[scalar_index(x,y)];
            for(unsigned int i = 0; i < ndir; ++i){
                double cidotu = dirx[i]*ux + diry[i]*uy;
                f[field_index(x,y,i)] = wi[i]*rho*(1.0 + 3.0*cidotu+4.5*cidotu*cidotu-1.5*(ux*ux+uy*uy));
            }
        }
    }
}

void stream(double *f_src, double* f_dst){
    for(unsigned int y = 0; y < NY; ++y){
        for(unsigned int x = 0; x < NX; ++x){
            for(unsigned int i = 0; i < ndir; ++i){
            // enforce periodicity
            // add NX to ensure that value is positive
            unsigned int xmd = (NX+x-dirx[i]) % NX;
            unsigned int ymd = (NY+y-diry[i]) % NY;
            f_dst[field_index(x,y,i)] =
            f_src[field_index(xmd,ymd,i)];
            }
        }
    }
}

void compute_rho_u(double *f, double *r, double *u, double *v){
    for(unsigned int y = 0; y < NY; ++y){
        for(unsigned int x = 0; x < NX; ++x){
            double rho = 0.0;
            double ux = 0.0;
            double uy = 0.0;
            for(unsigned int i = 0; i < ndir; ++i){
                rho += f[field_index(x,y,i)];
                ux += dirx[i]*f[field_index(x,y,i)];
                uy += diry[i]*f[field_index(x,y,i)];
            }
            r[scalar_index(x,y)] = rho;
            u[scalar_index(x,y)] = ux/rho;
            v[scalar_index(x,y)] = uy/rho;
        }
    }
}

void collide(double *f, double *r, double *u, double *v){
    // useful constants
    const double tauinv = 2.0/(6.0* nu+1.0); // 1/tau
    const double omtauinv = 1.0-tauinv;
    // 1 - 1/tau
    for(unsigned int y = 0; y < NY; ++y){
        for(unsigned int x = 0; x < NX; ++x){
            double rho = r[scalar_index(x,y)];
            double ux = u[scalar_index(x,y)];
            double uy = v[scalar_index(x,y)];
            for(unsigned int i = 0; i < ndir; ++i){
                // calculate dot product
                double cidotu = dirx[i]*ux + diry[i]*uy;
                // calculate equilibrium
                double feq = wi[i]*rho*(1.0 + 3.0*cidotu+4.5*cidotu *cidotu-1.5*(ux*ux+uy*uy));
                // relax to equilibrium
                f[field_index(x,y,i)] = omtauinv*f[field_index(x,y,i)]+tauinv*feq;
            }
        }
    }
}