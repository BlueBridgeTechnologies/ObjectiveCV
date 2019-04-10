//
//  Mat.m
//  ObjectiveCV
//
//  Created by admin on 10/04/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#import "Mat.h"
#import "Mat+Private.h"
#ifdef __cplusplus
#include <opencv2/opencv.hpp>
#import <opencv2/imgcodecs/ios.h>
#endif

@implementation Mat

- (instancetype)initWithUIImage:(UIImage *)image {
  self = [super init];
  CGFloat cols = image.size.width;
  CGFloat rows = image.size.height;
  
  cv::Mat cvMat(rows, cols, CV_8UC4); // 8 bits per component, 4 channels (color channels + alpha)
  UIImageToMat(image, cvMat);
  _backingMat = &cvMat;
  return self;
}

@end
