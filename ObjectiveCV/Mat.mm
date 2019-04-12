//
//  Mat.m
//  ObjectiveCV
//
//  Created by admin on 10/04/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#import "Mat.h"
#import "Mat+Private.h"
#import "MatSize.h"
#import "MatSize+Private.h"
#ifdef __cplusplus
#include <opencv2/opencv.hpp>
#import <opencv2/imgcodecs/ios.h>
#endif

@implementation Mat

- (id) initWithMat: (cv::Mat*) mat {
  self = [super init];
  _backingMat = mat;
  return self;
}

- (id) initWithUIImage:(UIImage *)image {
  CGFloat cols = image.size.width;
  CGFloat rows = image.size.height;
  
  cv::Mat cvMat(rows, cols, CV_8UC4); // 8 bits per component, 4 channels (color channels + alpha)
  UIImageToMat(image, cvMat);
  return [self initWithMat: &cvMat];
}

- (id) initWithZerosWithSize:(MatSize *)size andType:(int)type {
  self = [super init];
  cv::MatSize cvSize = *(size.backingSize);
  cv::Mat mat = cv::Mat::zeros(cvSize(), type);
  return [self initWithMat: &mat];
}

- (MatSize*) size {
  cv::MatSize size = _backingMat->size;
  return [[MatSize alloc] initWithSize: &size];
}

- (bool) empty {
  return _backingMat->empty();
}

- (int) channels {
  return _backingMat->channels();
}

- (void) dealloc {
  if (_backingMat) {
    delete _backingMat;
  }
}

@end
