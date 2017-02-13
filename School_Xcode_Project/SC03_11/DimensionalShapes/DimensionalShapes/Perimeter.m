//
//  Perimeter.m
//  DimensionalShapes
//
//  Created by SSangGA on 2017. 1. 23..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "Perimeter.h"

@implementation Perimeter

//- (instancetype)initWithName:(NSString *)name;
//{
//    self = [super init];
//    if (self) {
//        self.name = _name;
//        self.square = [[Figure alloc] initWithFigureName:@"정사각형"];
//        self.rectangle = [[Figure alloc] initWithFigureName:@"직사각형"];
//    }
//    return self;
//}
//- (NSString *)_name
//{
//    return self.name;
//}
- (void)calcSquarePerimeter:(Figure *)s;
{
    self.square.perimeter = 4 * s.s;
}
- (void)calcRectanglePerimeter:(Figure *)l w:(Figure *)w;
{
    self.rectangle.perimeter = 2 * l.l + 2 * w.w;
}
@end
