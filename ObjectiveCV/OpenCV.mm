//
//  OpenCV.m
//  ObjectiveCV
//
//  Created by admin on 09/04/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#import "OpenCV.h"
#import "OCVMat+Private.h"
#ifdef __cplusplus
#include <opencv2/opencv.hpp>
#endif

@implementation OpenCV

+ (NSString *)cvVersion {
  return [NSString stringWithFormat:@"OpenCV Version %s",  CV_VERSION];
}

@end
