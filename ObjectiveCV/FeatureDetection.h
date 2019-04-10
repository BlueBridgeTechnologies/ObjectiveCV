//
//  FeatureDetection.h
//  ObjectiveCV
//
//  Created by admin on 10/04/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mat.h"

NS_ASSUME_NONNULL_BEGIN

@interface FeatureDetection : NSObject

+(void)cornerHarrisWithsrc: (Mat*) src
                       dst: (Mat*) dst
                 blockSize: (int) blockSize
                     ksize: (int) ksize
                         k: (double) k
                 boderType: (int) borderType;

+(void)cornerHarrisWithsrc: (Mat*) src
                       dst: (Mat*) dst
                 blockSize: (int) blockSize
                     ksize: (int) ksize
                         k: (double) k;

@end

NS_ASSUME_NONNULL_END
