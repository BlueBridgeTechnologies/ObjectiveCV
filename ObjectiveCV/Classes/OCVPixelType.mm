//
//  OCVPixelType.m
//  ObjectiveCV
//
//  Created by admin on 18/04/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#ifdef __cplusplus
#include <opencv2/opencv.hpp>
//#include <opencv2/imgcodecs/ios.h>
#endif

#import "OCVPixelType.h"

@implementation OCVPixelType

+ (int) cv32FC1 {
  return CV_32FC1;
}

+ (int) cv16UC1 {
  return CV_16UC1;
}

@end
