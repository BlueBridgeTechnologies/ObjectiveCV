//
//  OCVScalar.h
//  ObjectiveCV
//
//  Created by admin on 16/04/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface OCVScalar : NSObject

- (id) init: (int) x;

- (id) initWithB: (int) b g: (int) g r: (int) r;

@end

NS_ASSUME_NONNULL_END
