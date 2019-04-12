//
//  Mat+Private.h
//  ObjectiveCV
//
//  Created by admin on 10/04/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#ifndef Mat_Private_h
#define Mat_Private_h


#endif /* Mat_Private_h */

#import "Mat.h"
#ifdef __cplusplus
#include <opencv2/opencv.hpp>
#endif

@interface Mat ()

- (id) initWithMat: (cv::Mat*) mat;

@property (nonatomic, readonly) cv::Mat *backingMat;

@end
