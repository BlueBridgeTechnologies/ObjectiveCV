//
//  Mat.m
//  ObjectiveCV
//
//  Created by admin on 10/04/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#import "OCVMat+Private.h"
#import "OCVSize+Private.h"
#import "OCVPoint+Private.h"

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

- (id) initWithPixelBuffer: (CVPixelBufferRef) buffer {
  size_t cols = CVPixelBufferGetWidth(buffer);
  size_t rows = CVPixelBufferGetHeight(buffer);
  
  cv::Mat cvMat((int)rows, (int)cols, CV_8UC4); // 8 bits per component, 4 channels (color channels + alpha)
  
  CVPixelBufferLockBaseAddress(buffer, 0);
  
  void *baseAddress = CVPixelBufferGetBaseAddress(buffer);
  
  size_t dataSize = CVPixelBufferGetDataSize(buffer);
  
  size_t targetDataSize = rows * cols * 4;
  
  if (dataSize >= targetDataSize) {
    std::memcpy(cvMat.data, baseAddress, targetDataSize);
  }
  
  CVPixelBufferUnlockBaseAddress(buffer, 0);
  
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

+ (void) minMaxLoc: (OCVMat *) src
            minLoc: (OCVPoint *) minLoc
            maxLoc: (OCVPoint *) maxLoc {
  cv::minMaxLoc(*[src backingMat],
                NULL,
                NULL,
                [minLoc backingPoint],
                [maxLoc backingPoint]);
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
