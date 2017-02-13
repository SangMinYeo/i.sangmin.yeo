//
//  Food.m
//  SC03_09_ Inheritance
//
//  Created by SSangGA on 2017. 1. 19..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "Food.h"

@interface Food ()

    @property (readwrite)NSString *name;
    @property (readwrite)NSInteger calorie;
    @property (readwrite)NSString *taste;

@end

@implementation Food

- (instancetype)initWithName:(NSString *)name
                     calorie:(NSInteger)calorie
                       taste:(NSString *)taste;
{
    self = [super init];
    self.name = name;
    self.calorie = calorie;
    self.taste = taste;
    return self;
}



@end
