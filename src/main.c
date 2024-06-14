#include <stdio.h>
#include <stdlib.h>

#include "globals.h"
#include "routines.h"

int main(int argc, char **argv){

    //vedi The lattice Boltzmann Method, pag.~560

    // allocate memory
    double *f1 = (double*) malloc(mem_size_ndir);
    double *f2 = (double*) malloc(mem_size_ndir);
    double *rho = (double*) malloc(mem_size_scalar);
    double *ux = (double*) malloc(mem_size_scalar);
    double *uy = (double*) malloc(mem_size_scalar);

    // compute Taylor-Green flow at t=0
    // to initialise rho, ux, uy fields.
    taylor_green(0,rho,ux,uy);

    // initialise f1 as equilibrium for rho, ux, uy
    init_equilibrium(f1,rho,ux,uy);

    // main simulation loop; take NSTEPS time steps
    for(unsigned int n = 0; n < NSTEPS; ++n)    {
        // stream from f1 storing to f2
        stream(f1,f2);
        // calculate post-streaming density and velocity
        compute_rho_u(f2,rho,ux,uy);
        // perform collision on f2
        collide(f2,rho,ux,uy);
        // swap pointers
        double *temp = f1;
        f1 = f2;
        f2 = temp;
    }

    // deallocate memory
    free(f1);
    free(f2);
    free(rho); 
    free(ux); 
    free(uy);

    return 0;
}