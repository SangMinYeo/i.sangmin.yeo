//
//  Person.m
//  SC03_09_ Inheritance
//
//  Created by SSangGA on 2017. 1. 19..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "Person.h"
@interface Person ()

    @property (readwrite) NSString* name;
    @property (readwrite) NSInteger age;
    @property (readwrite) NSString* face;
    @property (readwrite) NSInteger height;
    @property (readwrite) NSInteger weight;
    @property (readwrite) NSNumber* phoneNumber;

@end

@implementation Person

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age face:(NSString *)face height:(NSInteger)height weight:(NSInteger)weight phoneNumber:(NSNumber *)phoneNumber;
{
    self = [super init];
    self.age = age;
    self.face = face;
    self.height = height;
    self.weight = weight;
    self.phoneNumber = phoneNumber;
    return self;
}

- (void)eatFor:(Food *)food;
{
    NSLog(@"%@가(이) %@를 먹습니다", self.name, food);
}
@end
