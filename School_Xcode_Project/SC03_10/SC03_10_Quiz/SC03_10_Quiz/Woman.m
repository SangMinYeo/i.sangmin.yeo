//
//  Woman.m
//  SC03_10_Quiz
//
//  Created by SSangGA on 2017. 1. 20..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "Woman.h"

@implementation Woman

//통장정리
//~가 ~은행에서 통장정리를 하였습니다
- (void)totalized:(Bank *)bank;
{
    NSLog(@"%@가 %@은행에서 통장정리를 하였습니다", self.name, bank.name);
}

@end
