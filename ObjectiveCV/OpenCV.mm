//
//  OpenCV.m
//  ObjectiveCV
//
//  Created by admin on 09/04/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#import "OpenCV.h"
#import "Mat+Private.h"
#ifdef __cplusplus
#include <opencv2/opencv.hpp>
#endif

@implementation OpenCV

+ (NSString *)cvVersion {
  return [NSString stringWithFormat:@"OpenCV Version %s",  CV_VERSION];
}

+ (int) colorBgr2Gray {
  return cv::COLOR_BGR2GRAY;
}

+ (int) cv32FC1 {
  return CV_32FC1;
}

+ (int) normMinmax {
  return cv::NORM_MINMAX;
}

+ (void) cvtColorWithSrc: (Mat*) src
                     dst: (Mat*) dst
                    code: (int) code {
  NSString *srcEmpty = [src empty] ? @"True" : @"False";
  NSString *srcEmpty2 = [src backingMat] == nil ? @"True" : @"False";
  NSString *srcEmpty3 = [src backingMat]->empty() ? @"True" : @"False";
  NSString *dstEmpty = [dst empty] ? @"True" : @"False";
  NSString *dstEmpty2 = [dst backingMat] == nil ? @"True" : @"False";
  NSString *dstEmpty3 = [dst backingMat]->empty() ? @"True" : @"False";
  NSLog(@" src empty: %@, %@, %@, dst empty: %@, %@, %@", srcEmpty, srcEmpty2, srcEmpty3, dstEmpty, dstEmpty2, dstEmpty3);
  cv::cvtColor(*[src backingMat], *[dst backingMat], code);
}

+ (void) normalizeWithSrc: (Mat *) src
                      dst: (Mat *) dst
                    alpha: (double) alpha
                     beta: (double) beta
                 normType: (int) normType
                    dtype: (int) dtype
                     mask: (Mat *) mask {
  cv::normalize(*[src backingMat],
                *[dst backingMat],
                alpha,
                beta,
                normType,
                dtype,
                *[mask backingMat]);
}
  
+ (void) convertScaleAbsWithSrc: (Mat*) src
                            dst: (Mat*) dst {
  cv::convertScaleAbs(*[src backingMat], *[dst backingMat]);
}


@end
