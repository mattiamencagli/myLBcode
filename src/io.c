#include <hdf5.h>
#include <hdf5_hl.h>
#include <stdio.h>
#include <string.h>

#include "globals.h"
#include "routines.h"

void write_h5(const double *rho, const double *ux, const double *uy, const int t){

    hsize_t dim[2] = {NX, NY};

    char name[20];
    snprintf(name, 20, "./output%d.h5", t); // puts string into buffer
    hid_t file = H5Fcreate(name, H5F_ACC_TRUNC, H5P_DEFAULT, H5P_DEFAULT);

    H5LTset_attribute_int(file, "/", "NX", &NX, 1);
    H5LTset_attribute_int(file, "/", "NY", &NY, 1);
    H5LTmake_dataset(file, "/rho", 2, dim, H5T_NATIVE_DOUBLE, rho);
    H5LTmake_dataset(file, "/ux", 2, dim, H5T_NATIVE_DOUBLE, ux);
    H5LTmake_dataset(file, "/uy", 2, dim, H5T_NATIVE_DOUBLE, uy);

    H5Fclose(file);

}

void write_ASCII(const double *rho, const double *ux, const double *uy, const int t, const int lambda){

    char name[20];
    char dir[15];
    char dirname[36];
    snprintf(dir, 15, "./lambda%d", lambda);

    snprintf(name, 20, "/ux%d.dat", t);
    strcpy(dirname, dir);
    strcat(dirname, name);
    FILE *file = fopen(dirname, "w");
    for (int i = 0; i < NX; ++i) {
        for (int j = 0; j < NY; ++j)
            fprintf(file, "%g ", ux[scalar_index(i,j)]);
        fprintf(file, "\n");
    }
    fclose(file);

    memset(dirname,0,sizeof(dirname));
    snprintf(name, 20, "/uy%d.dat", t);
    strcpy(dirname, dir);
    strcat(dirname, name);
    file = fopen(dirname, "w");
    for (int i = 0; i < NX; ++i) {
        for (int j = 0; j < NY; ++j)
            fprintf(file, "%g ", uy[scalar_index(i,j)]);
        fprintf(file, "\n");
    }
    fclose(file);

    memset(dirname,0,sizeof(dirname));
    snprintf(name, 20, "/rho%d.dat", t);
    strcpy(dirname, dir);
    strcat(dirname, name);
    file = fopen(dirname, "w");
    for (int i = 0; i < NX; ++i) {
        for (int j = 0; j < NY; ++j)
            fprintf(file, "%g ", rho[scalar_index(i,j)]);
        fprintf(file, "\n");
    }
    fclose(file);

    printf("Step %d WRITTEN in file: %s\n", t, dirname);

}