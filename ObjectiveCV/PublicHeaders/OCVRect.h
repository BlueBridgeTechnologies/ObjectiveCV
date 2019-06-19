//
//  OCVRect.h
//  ObjectiveCV
//
//  Created by admin on 14/06/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#ifndef OCVRect_h
#define OCVRect_h

#import <Foundation/Foundation.h>

#endif /* OCVRect_h */

NS_ASSUME_NONNULL_BEGIN

@interface OCVRect: NSObject

- (id) initWithX: (int) x
            andY: (int) y
        andWidth: (int) width
       andHeight: (int) height;

- (int) x;

- (int) y;

- (int) width;

- (int) height;

@end

NS_ASSUME_NONNULL_END
