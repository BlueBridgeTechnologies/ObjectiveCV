//
//  OCVColorConversionCodes.m
//  ObjectiveCV
//
//  Created by admin on 18/04/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#ifdef __cplusplus
#include <opencv2/opencv.hpp>
//#include <opencv2/imgcodecs/ios.h>
#endif

#import "OCVColorConversionCodes.h"

@implementation OCVColorConversionCodes

+ (int) colorBgr2Gray {
  return cv::COLOR_BGR2GRAY;
}

@end
