//
//  Drawing.h
//  ObjectiveCV
//
//  Created by admin on 16/04/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OCVMat.h"
#import "OCVPoint.h"
#import "OCVScalar.h"

NS_ASSUME_NONNULL_BEGIN

@interface OCVDrawing : NSObject

+ (void) circle: (OCVMat*) img
       atCenter: (OCVPoint*) center
     withRadius: (int) radius
      withColor: (OCVScalar*) color
  withThickness: (int) thickness
   withLineType: (int) lineType
      withShift: (int) shift;

+ (void) circle: (OCVMat*) img
       atCenter: (OCVPoint*) center
     withRadius: (int) radius
      withColor: (OCVScalar*) color;

@end

NS_ASSUME_NONNULL_END
