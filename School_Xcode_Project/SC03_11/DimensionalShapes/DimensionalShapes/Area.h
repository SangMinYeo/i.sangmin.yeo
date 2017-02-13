//
//  Area.h
//  DimensionalShapes
//
//  Created by SSangGA on 2017. 1. 23..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Figure.h"

@interface Area : NSObject

@property NSString *name;
@property Figure *square;
@property Figure *rectangle;
@property Figure *circle;
@property Figure *triangle;
@property Figure *trapezoid;


//- (instancetype)initWithName:(NSString *)name;
//- (NSString *)name;
- (void)calcSquareArea:(Figure *)s;
- (void)calcRectangleArea:(Figure *)l w:(Figure *)w;
- (void)calcCircleArea:(Figure *)r pie:(Figure *)pie;
- (void)calcTriangleArea:(Figure *)b h:(Figure *)h;
- (void)calcTrapezoidArea:(Figure *)b h:(Figure *)h a:(Figure *)a;

@end
