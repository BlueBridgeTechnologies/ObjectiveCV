//
//  OCVNormTypes.m
//  ObjectiveCV
//
//  Created by admin on 18/04/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#ifdef __cplusplus
#include <opencv2/opencv.hpp>
#endif

#import "OCVNormTypes.h"

@implementation OCVNormTypes

+ (int) normMinmax {
  return cv::NORM_MINMAX;
}

@end
