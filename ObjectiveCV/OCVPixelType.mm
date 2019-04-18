//
//  OCVPixelType.m
//  ObjectiveCV
//
//  Created by admin on 18/04/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#import "OCVPixelType.h"
#ifdef __cplusplus
#include <opencv2/opencv.hpp>
#endif

@implementation OCVPixelType

+ (int) cv32FC1 {
  return CV_32FC1;
}

@end
