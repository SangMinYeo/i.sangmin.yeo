//
//  Area.m
//  DimensionalShapes
//
//  Created by SSangGA on 2017. 1. 23..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "Area.h"

@implementation Area

//- (instancetype)initWithName:(NSString *)name
//{
//    self = [super init];
//    if (self) {
//        self.name = _name;
//        self.square = [[Figure alloc] initWithFigureName:@"정사각형"];
//        self.rectangle = [[Figure alloc] initWithFigureName:@"직사각형"];
//        self.circle = [[Figure alloc] initWithFigureName:@"원"];
//        self.triangle = [[Figure alloc] initWithFigureName:@"삼각형"];
//        self.trapezoid = [[Figure alloc] initWithFigureName:@"사다리꼴"];
//    }
//    return self;
//}
//- (NSString *)_name
//{
//    return self.name;
//}
    
- (void)calcSquareArea:(Figure *)s
    {
        self.square.area = s.s*s.s;
    }
- (void)calcRectangleArea:(Figure *)l w:(Figure *)w
{
    self.rectangle.area = l.l * w.w;
}
- (void)calcCircleArea:(Figure *)r pie:(Figure *)pie
{
    self.circle.area = pie.pie * r.r * r.r;
}
- (void)calcTriangleArea:(Figure *)b h:(Figure *)h
{
    self.triangle.area = (CGFloat)(b.b * h.h * 1/2);
}
- (void)calcTrapezoidArea:(Figure *)b h:(Figure *)h a:(Figure *)a
{
    self.trapezoid.area = (CGFloat)(1/2 * h.h * (a.a+b.b));
}
@end
