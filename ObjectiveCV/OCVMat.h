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

@end

NS_ASSUME_NONNULL_END
