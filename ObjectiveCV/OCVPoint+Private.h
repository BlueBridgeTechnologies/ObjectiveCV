//
//  OCVPoint+Private.h
//  ObjectiveCV
//
//  Created by admin on 16/04/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#ifndef OCVPoint_Private_h
#define OCVPoint_Private_h


#endif /* OCVPoint_Private_h */

#import "OCVPoint.h"
#ifdef __cplusplus
#include <opencv2/opencv.hpp>
#endif

@interface OCVPoint ()

- (id) initWithPoint: (cv::Point) point;

- (cv::Point*) backingPoint;

@end
