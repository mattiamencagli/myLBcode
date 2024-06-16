#include <hdf5.h>
#include <hdf5_hl.h>

#include "globals.h"

void write(const double *f1, const double *f2, const double *rho, const double *ux, const double *uy, const int t){

    char name[20];
    snprintf(name, 20, "./output%d.h5", t); // puts string into buffer
    hid_t file = H5Fcreate(name, H5F_ACC_TRUNC, H5P_DEFAULT, H5P_DEFAULT);

    H5LTmake_dataset(file, "/f1" , 1, &DIMf, H5T_NATIVE_DOUBLE, f1);
    H5LTmake_dataset(file, "/f2", 1, &DIMf, H5T_NATIVE_DOUBLE, f2);
    H5LTmake_dataset(file, "/rho", 1, &DIM, H5T_NATIVE_DOUBLE, rho);
    H5LTset_attribute_int(file, "/rho", "NX", &NX, 1);
    H5LTset_attribute_int(file, "/rho", "NY", &NY, 1);
    H5LTmake_dataset(file, "/ux", 1, &DIM, H5T_NATIVE_DOUBLE, ux);
    H5LTmake_dataset(file, "/uy", 1, &DIM, H5T_NATIVE_DOUBLE, uy);

    H5Fclose(file);

}