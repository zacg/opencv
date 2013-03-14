
/**
 * @file KAZE.h
 * @brief Main program for detecting and computing descriptors in a nonlinear
 * scale space
 * @date Jan 21, 2012
 * @author Pablo F. Alcantarilla
 */

#ifndef _KAZE_H_
#define _KAZE_H_

//*************************************************************************************
//*************************************************************************************

// Includes
#include "kaze_config.h"
#include "kaze_nldiffusion_functions.h"
#include "kaze_utils.h"
#include "kaze_Ipoint.h"

// KAZE Class Declaration
class KAZE
{

private:

		// Parameters of the Nonlinear diffusion class
		float soffset;	// Base scale offset
		float sderivatives; // Standard deviation of the Gaussian for the nonlinear diff. derivatives
		int omax;		// Maximum octave level
		int nsublevels;	// Number of sublevels per octave level
		int img_width;	// Width of the original image
		int img_height; // Height of the original image
		bool save_scale_space; // For saving scale space images
		bool verbosity;	// Verbosity level
		std::vector<tevolution> evolution;	// Vector of nonlinear diffusion evolution
        float kcontrast; // The contrast parameter for the scalar nonlinear diffusion
		float dthreshold;	// Feature detector threshold response
		int diffusivity; 	// Diffusivity type, 0->PM G1, 1->PM G2, 2-> Weickert
		int descriptor_mode; // Descriptor mode
        bool use_upright;	// Set to true in case we want to use the upright version of the descriptors
        bool use_extended;	// Set to true in case we want to use the extended version of the descriptors

		// Vector of keypoint vectors for finding extrema in multiple threads
		std::vector<std::vector<Ipoint> > kpts_par;
		
		// Computation times variables in ms
		double tkcontrast;	// Kcontrast factor computation
		double tnlscale;	// Nonlinear Scale space generation
		double tdetector;	// Feature detector
		double tmderivatives; // Multiscale derivatives computation
		double tdresponse;	// Detector response computation
		double tdescriptor;	// Feature descriptor
		double tsubpixel;	// Subpixel refinement
		
		// Some auxiliary variables used in the AOS step
		cv::Mat Ltx, Lty, px, py, ax, ay, bx, by, qr, qc;
		
public:

	   // Constructor
	   KAZE(void);
	   KAZE(toptions &options);

	   // Destructor
	   ~KAZE(void);
	   
	   // Setters
	   void Set_Scale_Offset(float saux){soffset = saux;}
	   void Set_SDerivatives(float saux){sderivatives = saux;}
	   void Set_Octave_Max(int oaux){omax = oaux;}
	   void Set_NSublevels(int naux){nsublevels = naux;}
	   void Set_Save_Scale_Space_Flag(bool saux){save_scale_space = saux;}
	   void Set_Image_Width(int waux){img_width = waux;}
	   void Set_Image_Height(int haux){img_height = haux;}
	   void Set_Verbosity_Level(bool vaux){verbosity = vaux;}
	   void Set_KContrast(float kaux){kcontrast = kaux;}
	   void Set_Detector_Threshold(float daux){dthreshold = daux;}
	   void Set_Diffusivity_Type(int daux){diffusivity = daux;}
	   void Set_Descriptor_Mode(int daux){descriptor_mode = daux;}
	   void Set_Upright(bool aux){use_upright = aux;}
       void Set_Extended(bool aux){use_extended = aux;}

	   // Getters
	   float Get_Scale_Offset(void){return soffset;}
	   float Get_SDerivatives(void){return sderivatives;}
	   int Get_Octave_Max(void){return omax;}
	   int Get_NSublevels(void){return nsublevels;}
	   bool Get_Save_Scale_Space_Flag(void){return save_scale_space;}
	   int Get_Image_Width(void){return img_width;}
	   int Get_Image_Height(void){return img_height;}
	   bool Get_Verbosity_Level(void){return verbosity;}
	   float Get_KContrast(void){return kcontrast;}
	   float Get_Detector_Threshold(void){return dthreshold;}
	   int Get_Diffusivity_Type(void){return diffusivity;}
	   int Get_Descriptor_Mode(void){return descriptor_mode;}
	   bool Get_Upright(void){return use_upright;}
       bool Get_Extended(void){return use_extended;}
	   double Get_Time_KContrast(void){return tkcontrast;}
	   double Get_Time_NLScale(void){return tnlscale;}
	   double Get_Time_Detector(void){return tdetector;}
	   double Get_Time_Multiscale_Derivatives(void){return tmderivatives;}
	   double Get_Time_Detector_Response(void){return tdresponse;}
	   double Get_Time_Descriptor(void){return tdescriptor;}
	   double Get_Time_Subpixel(void){return tsubpixel;}

	   void Allocate_Memory_Evolution(void);
	   int Create_Nonlinear_Scale_Space(cv::Mat img);
       void Compute_KContrast(cv::Mat &img, float kper);
	   void Compute_Multiscale_Derivatives(void);
	   
	   // Feature Detection Methods
	   void Compute_Detector_Response(void);
       void Feature_Detection(std::vector<Ipoint> &kpts);
	   void Determinant_Hessian_Parallel(std::vector<Ipoint> &kpts);
	   void Find_Extremum_Threading(int level);
	   void Do_Subpixel_Refinement(std::vector<Ipoint> &kpts);
	   void Feature_Suppression_Distance(std::vector<Ipoint> &kpts, float mdist);

	   // AOS Methods
	   void AOS_Step_Scalar(cv::Mat &Ld, const cv::Mat &Ldprev, const cv::Mat &c, const float stepsize);
	   void AOS_Step_Scalar_Parallel(cv::Mat &Ld, const cv::Mat &Ldprev, const cv::Mat &c, const float stepsize);
	   void AOS_Rows(const cv::Mat &Ldprev, const cv::Mat &c, const float stepsize);
	   void AOS_Columns(const cv::Mat &Ldprev, const cv::Mat &c, const float stepsize);
	   void Thomas(cv::Mat a, cv::Mat b, cv::Mat Ld, cv::Mat x);

	   // Methods for saving the scale space set of images and detector responses
	   void Save_Nonlinear_Scale_Space(void);
	   void Save_Detector_Responses(void);
	   void Save_Flow_Responses(void);

	   // Feature Description methods
	   void Feature_Description(std::vector<Ipoint> &kpts);
	   void Compute_Main_Orientation_SURF(Ipoint &kpt);
			   
	   // Descriptor Mode -> 0 SURF 64
	   void Get_SURF_Upright_Descriptor_64(Ipoint &kpt);
	   void Get_SURF_Descriptor_64(Ipoint &kpt);

       // Descriptor Mode -> 0 SURF 128
       void Get_SURF_Upright_Descriptor_128(Ipoint &kpt);
       void Get_SURF_Descriptor_128(Ipoint &kpt);

	   // Descriptor Mode -> 1 M-SURF 64
	   void Get_MSURF_Upright_Descriptor_64(Ipoint &kpt);
	   void Get_MSURF_Descriptor_64(Ipoint &kpt);

       // Descriptor Mode -> 1 M-SURF 128
       void Get_MSURF_Upright_Descriptor_128(Ipoint &kpt);
       void Get_MSURF_Descriptor_128(Ipoint &kpt);

};

// Inline functions
float Get_Angle(float X, float Y);
float gaussian(float x, float y, float sig);
void Check_Descriptor_Limits(int &x, int &y, int width, int height );
void Clipping_Descriptor(Ipoint &keypoint, int niter, float ratio);

//*************************************************************************************
//*************************************************************************************

#endif
