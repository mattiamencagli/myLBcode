#include <stddef.h>

//The domain size
const unsigned int scale = 1;
const unsigned int NX = 128*scale;
const unsigned int NY = NX;
const unsigned int DIM = NX*NY;
//The number of directions in the lattice
const unsigned int ndir = 9;
//The memory size (in bytes) for the populations and scalar values
const unsigned int DIMf = NX*NY*ndir;
const size_t mem_size_ndir = sizeof(double)*DIMf;
const size_t mem_size_scalar = sizeof(double)*DIM;
//The lattice weights
const double w0 = 4.0/9.0; // zero weight
const double ws = 1.0/9.0; // adjacent weight
const double wd = 1.0/36.0; // diagonal weight
//Arrays of the lattice weights and direction components
const double wi[] = {w0,ws,ws,ws,ws,wd,wd,wd,wd};
const int dirx[] = {0,1,0,-1, 0,1,-1,-1, 1};
const int diry[] = {0,0,1, 0,-1,1, 1,-1,-1};
//The kinematic viscosity and the corresponding relaxation parameter
const double nu = 1.0/6.0;
const double tau = 3.0*nu+0.5;
//The maximum flow speed
const double u_max = 0.1/scale;
//The fluid density
const double rho0 = 1.0;
//The number of time steps in the simulation
const unsigned int NSTEPS = 20001*scale*scale;
const unsigned int out = 400*scale*scale;