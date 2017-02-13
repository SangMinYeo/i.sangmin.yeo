//
//  Length.m
//  ClassMethod
//
//  Created by SSangGA on 2017. 1. 23..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "Length.h"

@implementation Length

+ (NSUInteger)inchTo:(NSUInteger)inch
{
    return inch*0.393701;
}
+ (NSUInteger)centiMeter:(NSUInteger)cm
{
    return cm*2.54;
}
@end
