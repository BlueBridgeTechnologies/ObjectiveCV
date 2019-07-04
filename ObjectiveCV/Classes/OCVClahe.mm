//
//  OCVClahe.m
//  ObjectiveCV
//
//  Created by admin on 04/07/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#import "OCVClahe+Private.h"
#import "OCVSize+Private.h"
#import "OCVMat+Private.h"

@interface OCVClahe() {
  cv::Ptr<cv::CLAHE> backingClahe;
}

@end

@implementation OCVClahe

- (id) init {
  self = [super init];
  
  if (self) {
    backingClahe = cv::createCLAHE();
  }
  
  return self;
}

- (id) initWithClipLimit: (double) clipLimit
         andTileGridSize: (OCVSize*) tileGridSize {
  self = [super init];
  
  if (self) {
    backingClahe = cv::createCLAHE(clipLimit, [tileGridSize backingSize]);
  }
  
  return self;
}

- (cv::Ptr<cv::CLAHE>) backingClahe {
  return backingClahe;
}

- (void) applyWithInput: (OCVMat*) src
              andOutput: (OCVMat*) dst {
  backingClahe.get()->apply(*[src backingMat], *[dst backingMat]);
}

- (void) collectGarbage {
  backingClahe.get()->collectGarbage();
}

- (double) getClipLimit {
  return backingClahe.get()->getClipLimit();
}

- (OCVSize*) getTilesGridSize {
  return [[OCVSize alloc] initWithSize: backingClahe.get()->getTilesGridSize()];
}

- (void) setClipLimit: (double) clipLimit {
  backingClahe.get()->setClipLimit(clipLimit);
}

- (void) setTilesGridSize: (OCVSize*) tileGridSize {
  backingClahe.get()->setTilesGridSize([tileGridSize backingSize]);
}

@end
