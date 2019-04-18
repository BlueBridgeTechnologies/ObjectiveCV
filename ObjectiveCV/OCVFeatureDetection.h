//
//  FeatureDetection.h
//  ObjectiveCV
//
//  Created by admin on 10/04/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OCVMat.h"

NS_ASSUME_NONNULL_BEGIN

@interface OCVFeatureDetection : NSObject

+(void)cornerHarrisWithsrc: (OCVMat*) src
                       dst: (OCVMat*) dst
                 blockSize: (int) blockSize
                     ksize: (int) ksize
                         k: (double) k
                 boderType: (int) borderType;

+(void)cornerHarrisWithsrc: (OCVMat*) src
                       dst: (OCVMat*) dst
                 blockSize: (int) blockSize
                     ksize: (int) ksize
                         k: (double) k;

@end

NS_ASSUME_NONNULL_END
