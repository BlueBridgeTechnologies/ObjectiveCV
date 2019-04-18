//
//  OCVPoint.m
//  ObjectiveCV
//
//  Created by admin on 16/04/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#import "OCVPoint.h"
#import "OCVPoint+Private.h"

@interface OCVPoint () {
  cv::Point backingPoint;
}

@end

@implementation OCVPoint

- (id) initWithX: (int) x y: (int) y {
  self = [super init];
  
  if (self) {
    backingPoint = cv::Point(x, y);
  }
  
  return self;
}

- (id) initWithPoint: (cv::Point) point {
  self = [super init];
  
  if (self) {
    backingPoint = point;
  }
  
  return self;
}

- (cv::Point*) backingPoint {
  return &backingPoint;
}

- (int) x {
  return backingPoint.x;
}

- (int) y {
  return backingPoint.y;
}

@end
