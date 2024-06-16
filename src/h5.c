#include <hdf5.h>
#include <hdf5_hl.h>

#include "globals.h"

void write(const double *rho, const double *ux, const double *uy, const int t){

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