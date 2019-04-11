//
//  MatSize+Private.h
//  ObjectiveCV
//
//  Created by admin on 10/04/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#ifndef MatSize_Private_h
#define MatSize_Private_h


#endif /* MatSize_Private_h */

#import "Mat.h"
#ifdef __cplusplus
#include <opencv2/opencv.hpp>
#endif

@interface  MatSize ()

- (id) initWithSize: (cv::MatSize*) size;

@property (nonatomic, assign) cv::MatSize *backingSize;

@end
