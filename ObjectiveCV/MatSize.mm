//
//  MatSize.m
//  ObjectiveCV
//
//  Created by admin on 10/04/2019.
//  Copyright © 2019 admin. All rights reserved.
//

#import "MatSize.h"
#import "MatSize+Private.h"

@implementation MatSize

- (id)initWithSize:(cv::MatSize *)size {
  self = [super init];
  _backingSize = size;
  return self;
}

@end
