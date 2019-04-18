//
//  Mat.h
//  ObjectiveCV
//
//  Created by admin on 10/04/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "OCVSize.h"
#import "OCVPoint.h"

NS_ASSUME_NONNULL_BEGIN

@interface OCVMat : NSObject

- (id) initWithUIImage: (UIImage*) image;

- (id) initWithZerosWithSize: (OCVSize*) size
                     andType: (int) type;

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

@end

NS_ASSUME_NONNULL_END
