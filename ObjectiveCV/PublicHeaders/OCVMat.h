//
//  Mat.h
//  ObjectiveCV
//
//  Created by admin on 10/04/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#import "OCVSize.h"
#import "OCVPoint.h"
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface OCVMat : NSObject

- (id) initWithUIImage: (UIImage*) image;

- (id) initWithZerosWithSize: (OCVSize*) size
                     andType: (int) type;

- (id) initWithPixelBuffer: (CVPixelBufferRef) buffer;

- (OCVSize*) size;

- (BOOL) empty;

- (int) channels;

- (size_t) total;

- (int) rows;

- (int) cols;

- (float) floatAtRow: (int) row col: (int) col;

- (UIImage*) convertToUIImage;

+ (void) minMaxLoc: (OCVMat*) src
            minLoc: (OCVPoint*) minLoc
            maxLoc: (OCVPoint*) maxLoc;

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
