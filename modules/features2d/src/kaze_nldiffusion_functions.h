
/**
 * @file nldiffusion_functions.h
 * @brief Functions for non-linear diffusion applications:
 * 2D Gaussian Derivatives
 * Perona and Malik conductivity equations
 * Perona and Malik evolution
 * @date Dec 27, 2011
 * @author Pablo F. Alcantarilla
 */

#ifndef _NLDIFFUSION_FUNCTIONS_H_
#define _NLDIFFUSION_FUNCTIONS_H_

//******************************************************************************
//******************************************************************************

// Includes
#include "kaze_config.h"

//*************************************************************************************
//*************************************************************************************

// For the scale invariance of the differential operators
const bool use_natural_coordinates = false;

//*************************************************************************************
//*************************************************************************************

// Declaration of functions
void Gaussian_2D_Convolution(cv::Mat &src, cv::Mat &dst, unsigned int ksize_x, unsigned int ksize_y, float sigma);
void Image_Derivatives_SD(cv::Mat &src, cv::Mat &dst, unsigned int xorder, unsigned int yorder);
void Image_Derivatives_Scharr(cv::Mat &src, cv::Mat &dst, unsigned int xorder, unsigned int yorder);
void Compute_Gaussian_2D_Derivatives(cv::Mat &src, cv::Mat &smooth, cv::Mat &Lx, cv::Mat &Ly,
                                     cv::Mat &Lxy, cv::Mat &Lxx, cv::Mat &Lyy,
                                     unsigned int ksize_x, unsigned int ksize_y, float sigma);
void PM_G1(cv::Mat &src, cv::Mat &dst, cv::Mat &Lx, cv::Mat &Ly, float k);
void PM_G2(cv::Mat &src, cv::Mat &dst, cv::Mat &Lx, cv::Mat &Ly, float k);
void Weickert_Diffusivity(cv::Mat &src, cv::Mat &dst, cv::Mat &Lx, cv::Mat &Ly, float k);
float Compute_K_Percentile(cv::Mat &img, float perc, float gscale, unsigned int nbins, unsigned int ksize_x, unsigned int ksize_y);
void Compute_Scharr_Derivatives(cv::Mat &src, cv::Mat &dst, int xorder, int yorder, int scale);
void NLD_Step_Scalar(cv::Mat &Ld, cv::Mat &c, cv::Mat &Lstep, float stepsize);
bool Check_Maximum_Neighbourhood(cv::Mat &img, int dsize, float value, int row, int col, bool same_img );
bool Check_Minimum_Neighbourhood(cv::Mat &img, int dsize, float value, int row, int col, bool same_img );

//*************************************************************************************
//*************************************************************************************


#endif
