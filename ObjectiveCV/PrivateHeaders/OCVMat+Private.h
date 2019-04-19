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

#import "OCVMat.h"

@interface OCVMat ()

- (id) initWithMat: (cv::Mat) mat;

- (cv::Mat*) backingMat;

@end
