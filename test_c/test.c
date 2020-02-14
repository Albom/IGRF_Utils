#include <stdio.h>

void igrf_sub_(float* xlat, float* xlong, float* year, float* height,
               float* xl, int* icode, float* dip, float* dec);

int main(int argc, char** argv){

	float xlat = 40;
	float xlong = 288;
	float year = 2000;
    float height = 200;
	float xl;
	int icode;
	float dip;
	float dec;

	xl = -1;
	
	igrf_sub_(&xlat, &xlong, &year, &height,
               &xl, &icode, &dip, &dec);
			   
	printf("icode=%d\nxl=%f\n", icode, xl);
	return 0;
}