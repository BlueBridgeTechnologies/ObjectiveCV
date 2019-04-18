//
//  OCVNormTypes.m
//  ObjectiveCV
//
//  Created by admin on 18/04/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#import "OCVNormTypes.h"
#ifdef __cplusplus
#include <opencv2/opencv.hpp>
#endif

@implementation OCVNormTypes

+ (int) normMinmax {
  return cv::NORM_MINMAX;
}

@end
