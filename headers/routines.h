#ifndef ROUTINES_H
#define ROUTINES_H

inline size_t scalar_index(const unsigned int x, const unsigned int y);

inline size_t field_index(const unsigned int x, const unsigned int y, const unsigned int d);

void init_fields(unsigned int t, double *r, double *vx, double *vy, const double K_fac);

void init_equilibrium(double *f, double *r, double *vx, double *vy);

void stream(double *f_src, double* f_dst);

void compute_rho_u(double *f, double *r, double *vx, double *vy);

void collide(double *f, double *r, double *vx, double *vy);

#endif