# The set of languages for which implicit dependencies are needed:
SET(CMAKE_DEPENDS_LANGUAGES
  )
# The set of files for implicit dependencies of each language:

# Preprocessor definitions for this target.
SET(CMAKE_TARGET_DEFINITIONS
  "HAVE_CVCONFIG_H"
  "CVAPI_EXPORTS"
  )

# Targets to which this target links.
SET(CMAKE_TARGET_LINKED_INFO_FILES
  )

# The include file search paths:
SET(CMAKE_C_TARGET_INCLUDE_PATH
  "../modules/calib3d/perf"
  "../modules/features2d/include"
  "../modules/highgui/include"
  "../modules/flann/include"
  "../modules/imgproc/include"
  "../modules/core/include"
  "../modules/ts/include"
  "../modules/calib3d/include"
  "modules/calib3d"
  "../modules/calib3d/src"
  "../modules/calib3d/test"
  "."
  "/usr/include/eigen3"
  )
SET(CMAKE_CXX_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
SET(CMAKE_Fortran_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
SET(CMAKE_ASM_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
