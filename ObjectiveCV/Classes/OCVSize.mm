//
//  MatSize.m
//  ObjectiveCV
//
//  Created by admin on 10/04/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#import "OCVSize+Private.h"

@interface OCVSize () {
  
  cv::Size backingSize;
  
}

@end

@implementation OCVSize

- (id)initWithSize: (cv::Size) size {
  self = [super init];
  
  if (self) {
    backingSize = size;
  }
  
  return self;
}

- (cv::Size) backingSize {
  return backingSize;
}

@end
