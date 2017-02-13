//
//  GetLastDay.m
//  ClassExcerciseSwitch
//
//  Created by SSangGA on 2017. 1. 31..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "GetLastDay.h"

@implementation GetLastDay

- (void)gettingLastdayPerMonth:(long)month;
{
    switch (month) {
        case 1:
            self.lastday = 31;
            NSLog(@"마지막날은 %ld입니다", self.lastday);
            break;
        case 2:
            self.lastday = 28;
            NSLog(@"마지막날은 %ld입니다", self.lastday);
            
            break;
        case 3:
            self.lastday = 31;
            NSLog(@"마지막날은 %ld입니다", self.lastday);
            break;
        case 4:
            self.lastday = 30;
            NSLog(@"마지막날은 %ld입니다", self.lastday);
            break;
        case 5:
            self.lastday = 31;
            NSLog(@"마지막날은 %ld입니다", self.lastday);
            break;
        case 6:
            self.lastday = 30;
            NSLog(@"마지막날은 %ld입니다", self.lastday);
            break;
        case 7:
            self.lastday = 31;
            NSLog(@"마지막날은 %ld입니다", self.lastday);
            break;
        case 8:
            self.lastday = 31;
            NSLog(@"마지막날은 %ld입니다", self.lastday);
            break;
        case 9:
            self.lastday = 30;
            NSLog(@"마지막날은 %ld입니다", self.lastday);
            break;
        case 10:
            self.lastday = 31;
            NSLog(@"마지막날은 %ld입니다", self.lastday);
            break;
        case 11:
            self.lastday = 30;
            NSLog(@"마지막날은 %ld입니다", self.lastday);
            break;
        case 12:
            self.lastday = 31;
            NSLog(@"마지막날은 %ld입니다", self.lastday);
            break;
        default:
            break;
    }
}
@end
