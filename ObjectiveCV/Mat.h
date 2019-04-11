//
//  Mat.h
//  ObjectiveCV
//
//  Created by admin on 10/04/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MatSize.h"

NS_ASSUME_NONNULL_BEGIN

@interface Mat : NSObject

- (id) initWithUIImage: (UIImage*) image;

- (id) initWithZerosWithSize: (MatSize*) size
                     andType: (int) type;

- (MatSize*) size;

@end

NS_ASSUME_NONNULL_END
