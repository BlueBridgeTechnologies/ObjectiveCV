//
//  Drawing.m
//  ObjectiveCV
//
//  Created by admin on 16/04/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#import "OCVDrawing.h"
#import "OCVMat+Private.h"
#import "OCVPoint+Private.h"
#import "OCVScalar+Private.h"
#ifdef __cplusplus
#include <opencv2/opencv.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#endif


@implementation OCVDrawing

+ (void) circle: (OCVMat*) img
       atCenter: (OCVPoint*) center
     withRadius: (int) radius
      withColor: (OCVScalar*) color {
  [OCVDrawing circle: img
         atCenter: center
       withRadius: radius
        withColor: color
    withThickness: 1
     withLineType: cv::LineTypes::LINE_8
        withShift: 0];
}

+ (void) circle: (OCVMat*) img
       atCenter: (OCVPoint*) center
     withRadius: (int) radius
      withColor: (OCVScalar*) color
  withThickness: (int) thickness
   withLineType: (int) lineType
      withShift: (int) shift {
  cv::circle(*[img backingMat],
         *[center backingPoint],
         radius,
         [color backingScalar],
         thickness,
         lineType,
         shift);
}

@end
