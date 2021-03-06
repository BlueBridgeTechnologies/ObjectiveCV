//
//  FeatureDetection.m
//  ObjectiveCV
//
//  Created by admin on 10/04/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#ifdef __cplusplus
#include <opencv2/opencv.hpp>
//#include <opencv2/imgcodecs/ios.h>
#endif

#import "OCVMat+Private.h"
#import "OCVFeatureDetection.h"

@implementation OCVFeatureDetection

+(void)cornerHarrisWithsrc: (OCVMat*) src
                       dst: (OCVMat*) dst
                 blockSize: (int) blockSize
                     ksize: (int) ksize
                         k: (double) k {
  [OCVFeatureDetection cornerHarrisWithsrc: src
                                       dst: dst
                                 blockSize: blockSize
                                     ksize: ksize
                                         k: k
                                 boderType: 0];
}

+(void)cornerHarrisWithsrc: (OCVMat*) src
                       dst: (OCVMat*) dst
                 blockSize: (int) blockSize
                     ksize: (int) ksize
                         k: (double) k
                 boderType: (int) borderType {
  cv::Mat cvSrc = *[src backingMat];
  cv::Mat cvDst = *[dst backingMat];
  cv::cornerHarris(cvSrc,
                   cvDst,
                   blockSize,
                   ksize,
                   k,
                   borderType);
}

@end
