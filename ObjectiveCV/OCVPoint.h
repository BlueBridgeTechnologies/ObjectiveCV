//
//  OCVPoint.h
//  ObjectiveCV
//
//  Created by admin on 16/04/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface OCVPoint : NSObject

- (id) initWithX: (int) x y: (int) y;

- (int) x;

- (int) y;

@end

NS_ASSUME_NONNULL_END
