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

+ (void) cvtColorWithSrc: (Mat*) src
                     dst: (Mat*) dst
                    code: (int) code {
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
