//
//  Perimeter.h
//  DimensionalShapes
//
//  Created by SSangGA on 2017. 1. 23..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Figure.h"

@interface Perimeter : NSObject

@property NSString *name;
@property Figure *square;
@property Figure *rectangle;

//- (instancetype)initWithName:(NSString *)name;
//- (NSString *)name;
- (void)calcSquareArea:(Figure *)s;
- (void)calcRectangleArea:(Figure *)l w:(Figure *)w;

@end
