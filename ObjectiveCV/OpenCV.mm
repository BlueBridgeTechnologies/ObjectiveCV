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

+ (int) colorBgr2Gray {
  return cv::COLOR_BGR2GRAY;
}

+ (int) cv32FC1 {
  return CV_32FC1;
}

+ (int) normMinmax {
  return cv::NORM_MINMAX;
}

+ (void) cvtColorWithSrc: (OCVMat*) src
                     dst: (OCVMat*) dst
                    code: (int) code {
  cv::cvtColor(*[src backingMat], *[dst backingMat], code);
}

+ (void) normalizeWithSrc: (OCVMat *) src
                      dst: (OCVMat *) dst
                    alpha: (double) alpha
                     beta: (double) beta
                 normType: (int) normType
                    dtype: (int) dtype
                     mask: (OCVMat *) mask {
  cv::normalize(*[src backingMat],
                *[dst backingMat],
                alpha,
                beta,
                normType,
                dtype,
                *[mask backingMat]);
}
  
+ (void) convertScaleAbsWithSrc: (OCVMat*) src
                            dst: (OCVMat*) dst {
  cv::convertScaleAbs(*[src backingMat], *[dst backingMat]);
}


@end
