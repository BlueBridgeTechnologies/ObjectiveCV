//
//  OpenCV.h
//  ObjectiveCV
//
//  Created by admin on 09/04/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mat.h"

NS_ASSUME_NONNULL_BEGIN

@interface OpenCV : NSObject

+ (NSString *)cvVersion;

+ (void) cvtColorWithSrc: (Mat*) src
                     dst: (Mat*) dst
                    code: (int) code;

+ (void) normalizeWithSrc: (Mat*) src
                      dst: (Mat*) dst
                    alpha: (double) alpha
                     beta: (double) beta
                 normType: (int) normType
                    dtype: (int) dtype
                     mask: (Mat*) mask;

+ (void) convertScaleAbsWithSrc: (Mat*) src
                            dst: (Mat*) dst;

@end

NS_ASSUME_NONNULL_END
