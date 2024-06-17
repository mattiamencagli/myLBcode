#ifndef H5_H
#define H5_H

void write(const double *rho, const double *ux, const double *uy, const int t);
void write_ASCII(const double *rho, const double *ux, const double *uy, const int t);

#endif