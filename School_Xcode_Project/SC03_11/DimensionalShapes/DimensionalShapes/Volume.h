//
//  Perimeter.h
//  DimensionalShapes
//
//  Created by SSangGA on 2017. 1. 23..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Figure.h"

@interface Volume : NSObject

@property NSString *name;
@property Figure *cube;
@property Figure *rectangularSolid;
@property Figure *circularCylinder;
@property Figure *sphere;
@property Figure *cone;

//- (instancetype)initWithName:(NSString *)name;
//- (NSString *)_name;
- (void)calcCubeVolume:(Figure *)s;
- (void)calcRectangularSolidVolume:(Figure *)l w:(Figure *)w h:(Figure *)h;
- (void)calcCircularCylinderVolume:(Figure *)pie r:(Figure *)r h:(Figure *)h;
- (void)calcSphereVolume:(Figure *)pie r:(Figure *)r;
- (void)calcConeVolume:(Figure *)pie r:(Figure *)r h:(Figure *)h;


@end
