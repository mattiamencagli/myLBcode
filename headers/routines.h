#ifndef ROUTINES_H
#define ROUTINES_H

inline size_t scalar_index(const unsigned int x, const unsigned int y);

inline size_t field_index(const unsigned int x, const unsigned int y, const unsigned int d);

void taylor_green_pointcomp(unsigned int t, unsigned int x, unsigned int y, double *r, double *u, double *v);

void sin_init(unsigned int t, unsigned int x, unsigned int y, double *r, double *u, double *v, const double K_fac);

void taylor_green(unsigned int t, double *r, double *u, double *v, const double K_fac);

void init_equilibrium(double *f, double *r, double *u, double *v);

void stream(double *f_src, double* f_dst);

void compute_rho_u(double *f, double *r, double *u, double *v);

void collide(double *f, double *r, double *u, double *v);

#endif