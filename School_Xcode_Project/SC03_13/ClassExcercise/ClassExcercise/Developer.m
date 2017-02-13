//
//  Developer.m
//  ClassExcercise
//
//  Created by SSangGA on 2017. 1. 31..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "Developer.h"


@implementation Developer

- (void)setJob:(NSString *)job;
{

    [self setJob:job];
    NSString *nickname = @"괴짜";
    self.geek = nickname;
    NSLog(@"%@의 직업은 %@이며 성격이 %@입니다", self.name, self.job, self.geek);
    
    //    self.job = job;
//    NSLog(@"%@의 직업은 %@입니다",self.name, self.job);
}
@end
