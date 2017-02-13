//
//  Person.h
//  ClassExcercise
//
//  Created by SSangGA on 2017. 1. 31..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property NSString *name;
@property NSUInteger age;
@property NSUInteger height;
@property NSUInteger birthday;
@property NSString *job;
@property NSUInteger salary;
@property NSString *address;

- (instancetype)initWithName:(NSString *)name;

- (void)settingJob:(NSString *)job;

- (bool)checkBirthdayToday:(NSUInteger)birthday;


@end
