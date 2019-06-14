//
//  OCVRect.m
//  ObjectiveCV
//
//  Created by admin on 14/06/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#import "OCVRect+Private.h"

@interface OCVRect () {
  cv::Rect backingRect;
}

@end

@implementation OCVRect

- (id) initWithX:(int)x
            andY:(int)y
        andWidth:(int)width
       andHeight:(int)height {
  self = [super init];
  
  if (self) {
    backingRect = cv::Rect(x, y, width, height);
  }
  
  return self;
}

- (cv::Rect*) backingRect {
  return &backingRect;
}

@end
