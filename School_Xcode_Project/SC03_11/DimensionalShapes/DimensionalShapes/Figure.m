//
//  Figure.m
//  DimensionalShapes
//
//  Created by SSangGA on 2017. 1. 23..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "Figure.h"

@implementation Figure

- (instancetype)initWithFigureName:(NSString *)name;
{
    self = [super init];
    if (self) {
        self.name = name;
    }
    return self;
}
@end
