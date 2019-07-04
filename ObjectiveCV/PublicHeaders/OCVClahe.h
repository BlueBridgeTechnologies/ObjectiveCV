//
//  OCVClahe.h
//  ObjectiveCV
//
//  Created by admin on 04/07/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#ifndef OCVClahe_h
#define OCVClahe_h

#import <Foundation/Foundation.h>
#import "OCVSize.h"
#import "OCVMat.h"

#endif /* OCVClahe_h */

NS_ASSUME_NONNULL_BEGIN

@interface OCVClahe : NSObject

- (id) init;

- (id) initWithClipLimit: (double) clipLimit
         andTileGridSize: (OCVSize*) tileGridSize;

- (void) applyWithInput: (OCVMat*) src
              andOutput: (OCVMat*) dst;

- (void) collectGarbage;

- (double) getClipLimit;

- (OCVSize*) getTilesGridSize;

- (void) setClipLimit: (double) clipLimit;

- (void) setTilesGridSize: (OCVSize*) tileGridSize;

@end

NS_ASSUME_NONNULL_END
