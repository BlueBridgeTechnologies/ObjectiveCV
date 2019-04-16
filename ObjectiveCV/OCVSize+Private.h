//
//  MatSize+Private.h
//  ObjectiveCV
//
//  Created by admin on 10/04/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#ifndef Size_Private_h
#define Size_Private_h


#endif /* MatSize_Private_h */

#import "OCVMat.h"
#ifdef __cplusplus
#include <opencv2/opencv.hpp>
#endif

@interface  OCVSize ()

- (id) initWithSize: (cv::Size) size;

- (cv::Size) backingSize;

@end
