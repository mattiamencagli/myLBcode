#include <stdio.h>
#include <stdlib.h>
#include <hdf5.h>
#include <hdf5_hl.h>

#include "routines.h"
#include "io.h"
#include "globals.h"

int main(int argc, char **argv){

    //My input
    unsigned int lambda = 128;
    if(argc > 1){
        lambda = atoi(argv[1]);
        if(lambda>NX || lambda%2!=0){
            printf("lambda deve essere minore di 128 e multiplo di 2\n");
            exit(1);
        }
    }
    const double K_fac = 256/lambda;
    printf("lambda=%d, K_fac=%f\n",lambda, K_fac);

    //vedi The lattice Boltzmann Method, pag.~560

    // allocate memory
    double *f1 = (double*) malloc(mem_size_ndir);
    double *f2 = (double*) malloc(mem_size_ndir);
    double *rho = (double*) malloc(mem_size_scalar);
    double *ux = (double*) malloc(mem_size_scalar);
    double *uy = (double*) malloc(mem_size_scalar);

    // compute Taylor-Green flow at t=0
    // to initialise rho, ux, uy fields.
    init_fields(0,rho,ux,uy,K_fac);

    // initialise f1 as equilibrium for rho, ux, uy
    init_equilibrium(f1,rho,ux,uy);

    //write(rho, ux, uy, -1);

    // main simulation loop; take NSTEPS time steps
    for(unsigned int n = 0; n < NSTEPS; ++n) {
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

        if( n%out==0 )
            write_ASCII(rho, ux, uy, n, lambda);

    }

    // deallocate memory
    free(f1);
    free(f2);
    free(rho); 
    free(ux); 
    free(uy);

    return 0;
}