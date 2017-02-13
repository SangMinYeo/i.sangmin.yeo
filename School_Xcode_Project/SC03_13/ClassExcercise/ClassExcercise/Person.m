//
//  Person.m
//  ClassExcercise
//
//  Created by SSangGA on 2017. 1. 31..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "Person.h"

@implementation Person


- (instancetype)initWithName:(NSString *)name;
{
    self = [super init];
    if (self) {
    self.name = name;
    }
    return self;
}

- (void)settingJob:(NSString *)job;
{
    self.job = job;
    NSLog(@"%@의 직업은 %@입니다",self.name, self.job);
}

- (bool)checkBirthdayToday:(NSUInteger)birthday;
{
    NSDate *currentDate = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"MMdd"];
    NSString *dateString = [dateFormatter stringFromDate:currentDate];
    if([dateString integerValue] == birthday){
        NSLog(@"오늘은 %@이며 %@의 생일입니다",dateString, self.name);
        return true;
    } else {
        NSLog(@"오늘은 %@이며 %@의 생일이 아닙니다", dateString, self.name);
        return false;
    }
    

}
@end
