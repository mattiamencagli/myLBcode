#ifndef GLOBALS_H
#define GLOBALS_H

//The domain size
extern const unsigned int scale;
extern const unsigned int NX;
extern const unsigned int NY;
extern const unsigned int DIM;
//The number of directions in the lattice
extern const unsigned int ndir;
//The memory size (in bytes) for the populations and scalar values
extern const unsigned int DIMf;
extern const size_t mem_size_ndir;
extern const size_t mem_size_scalar;
//The lattice weights
extern const double w0; // zero weight
extern const double ws; // adjacent weight
extern const double wd; // diagonal weight
//Arrays of the lattice weights and direction components
extern const double wi[];
extern const int dirx[];
extern const int diry[];
//The kinematic viscosity and the corresponding relaxation parameter
extern const double nu;
extern const double tau;
//The maximum flow speed
extern const double u_max;
//The fluid density
extern const double rho0;
//The number of time steps in the simulation
extern const unsigned int NSTEPS;
extern const unsigned int out;


#endif