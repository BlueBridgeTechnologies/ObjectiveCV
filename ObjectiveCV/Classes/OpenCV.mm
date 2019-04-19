//
//  OpenCV.m
//  ObjectiveCV
//
//  Created by admin on 09/04/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#ifdef __cplusplus
#include <opencv2/opencv.hpp>
#endif

#import "OpenCV.h"

@implementation OpenCV

+ (NSString *)cvVersion {
  return [NSString stringWithFormat:@"OpenCV Version %s",  CV_VERSION];
}

@end
