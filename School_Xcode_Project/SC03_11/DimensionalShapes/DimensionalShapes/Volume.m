//
//  Perimeter.m
//  DimensionalShapes
//
//  Created by SSangGA on 2017. 1. 23..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "Volume.h"

@implementation Volume

//- (instancetype)initWithName:(NSString *)name
//{
//    self = [super init];
//    if (self) {
//        self.name = _name;
//        self.cube = [[Figure alloc] initWithFigureName:@"정육면체"];
//        self.rectangularSolid = [[Figure alloc] initWithFigureName:@"직육면체"];
//        self.circularCylinder = [[Figure alloc] initWithFigureName:@"원기둥"];
//        self.sphere = [[Figure alloc] initWithFigureName:@"공"];
//        self.cone = [[Figure alloc] initWithFigureName:@"원뿔"];
//    }
//    return self;
//}

//- (NSString *)_name
//{
//    return self.name;
//}
- (void)calcCubeVolume:(Figure *)
                     s:(Figure *)s
{
    self.cube.volume = s.s * s.s * s.s;
}
- (void)calcRectangularSolidVolume:(Figure *)l
                                 w:(Figure *)w
                                 h:(Figure *)h
{
    self.rectangularSolid.volume = l.l * w.w * h.h;
}
- (void)calcCircularCylinderVolume:(Figure *)pie
                                 r:(Figure *)r
                                 h:(Figure *)h
{
    self.circularCylinder.volume = pie.pie * r.r * r.r * h.h;
}
- (void)calcSphereVolume:(Figure *)pie
                     r:(Figure *)r
{
    self.sphere.volume = 3/4 * pie.pie * r.r * r.r * r.r;
}
- (void)calcConeVolume:(Figure *)pie
                     r:(Figure *)r
                     h:(Figure *)h
{
    self.cone.volume = 1/3 * pie.pie * r.r * r.r * h.h;
}

@end
