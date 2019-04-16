//
//  OpenCV.h
//  ObjectiveCV
//
//  Created by admin on 09/04/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OCVMat.h"

NS_ASSUME_NONNULL_BEGIN

@interface OpenCV : NSObject

+ (NSString *)cvVersion;

+ (int) colorBgr2Gray;

+ (int) cv32FC1;

+ (int) normMinmax;

+ (void) cvtColorWithSrc: (OCVMat*) src
                     dst: (OCVMat*) dst
                    code: (int) code;

+ (void) normalizeWithSrc: (OCVMat*) src
                      dst: (OCVMat*) dst
                    alpha: (double) alpha
                     beta: (double) beta
                 normType: (int) normType
                    dtype: (int) dtype
                     mask: (OCVMat*) mask;

+ (void) convertScaleAbsWithSrc: (OCVMat*) src
                            dst: (OCVMat*) dst;

@end

NS_ASSUME_NONNULL_END
