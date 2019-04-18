//
//  OCVColorConversionCodes.m
//  ObjectiveCV
//
//  Created by admin on 18/04/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#import "OCVColorConversionCodes.h"
#ifdef __cplusplus
#include <opencv2/opencv.hpp>
#endif

@implementation OCVColorConversionCodes

+ (int) colorBgr2Gray {
  return cv::COLOR_BGR2GRAY;
}

@end
