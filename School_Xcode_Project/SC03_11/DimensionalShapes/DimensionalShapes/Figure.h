//
//  Figure.h
//  DimensionalShapes
//
//  Created by SSangGA on 2017. 1. 23..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Figure : NSObject

@property NSUInteger s;
@property NSUInteger w;
@property NSUInteger l;
@property NSUInteger h;
@property NSUInteger b;
@property NSUInteger pie;
@property NSUInteger r;
@property NSUInteger a;
@property NSString *name;
@property NSUInteger area;
@property NSUInteger perimeter;
@property NSUInteger circumference;
@property NSUInteger volume;

- (instancetype)initWithFigureName:(NSString *)name;
@end
