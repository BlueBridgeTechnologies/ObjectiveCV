//
//  OCVScalar.m
//  ObjectiveCV
//
//  Created by admin on 16/04/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#import "OCVScalar.h"
#import "OCVScalar+Private.h"

@interface OCVScalar () {
  cv::Scalar backingScalar;
}

@end

@implementation OCVScalar

- (id) init: (int) x {
  self = [super init];
  
  if (self) {
    backingScalar = cv::Scalar(x);
  }
  
  return self;
}

- (id) initWithB: (int) b g: (int) g r: (int) r {
  self = [super init];
  
  if (self) {
    backingScalar = cv::Scalar(b, g, r);
  }
  
  return self;
}

- (cv::Scalar) backingScalar {
  return backingScalar;
}

@end
