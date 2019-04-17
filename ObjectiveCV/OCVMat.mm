//
//  Mat.m
//  ObjectiveCV
//
//  Created by admin on 10/04/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#import "OCVMat.h"
#import "OCVMat+Private.h"
#import "OCVSize.h"
#import "OCVSize+Private.h"
#ifdef __cplusplus
#include <opencv2/opencv.hpp>
#import <opencv2/imgcodecs/ios.h>
#endif

@interface OCVMat () {

  cv::Mat backingMat;

}

@end

@implementation OCVMat

- (id) initWithMat: (cv::Mat) mat {
  self = [super init];
  backingMat = mat;
  return self;
}

- (id) initWithUIImage: (UIImage *) image {
  CGFloat cols = image.size.width;
  CGFloat rows = image.size.height;
  
  cv::Mat cvMat = cv::Mat(rows, cols, CV_8UC4); // 8 bits per component, 4 channels (color channels + alpha)
  UIImageToMat(image, cvMat);
  return [self initWithMat: cvMat];
}

- (id) initWithZerosWithSize: (OCVSize*) size andType: (int) type {
  cv::Mat mat = cv::Mat::zeros([size backingSize], type);
  return [self initWithMat: mat];
}

- (OCVSize*) size {
  return [[OCVSize alloc] initWithSize: backingMat.size()];
}

- (BOOL) empty {
  return backingMat.empty() ? YES : NO;
}

- (int) channels {
  return backingMat.channels();
}

- (cv::Mat*) backingMat {
  return &backingMat;
}

- (size_t) total {
  return backingMat.total();
}

- (int) rows {
  return backingMat.rows;
}

- (int) cols {
  return backingMat.cols;
}

- (float) floatAtRow: (int) row col: (int) col {
  return backingMat.at<float>(row, col);
}

- (UIImage*) convertToUIImage {
  UIImage* image = MatToUIImage(backingMat);
  return image;
}

@end
