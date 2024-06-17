#ifndef H5_H
#define H5_H

void write_h5(const double *rho, const double *ux, const double *uy, const int t);
void write_ASCII(const double *rho, const double *ux, const double *uy, const int t, const int lambda);

#endif