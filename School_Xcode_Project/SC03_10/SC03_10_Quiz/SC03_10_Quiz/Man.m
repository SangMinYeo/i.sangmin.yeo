//
//  Man.m
//  SC03_10_Quiz
//
//  Created by SSangGA on 2017. 1. 20..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "Man.h"

@implementation Man

//입금메소드(재정의)
//~가 ~은행에 ~를 입금하였습니다
//~가 ~은행에서 자신의 계좌를 조회해본 결과, 총 자산은 ~원입니다.
- (void)depositOfMoney:(NSUInteger)won toBank:(Bank *)bank;
{
    [super depositOfMoney:won toBank:bank];
//    super.asset = super.asset + won;
//    NSLog(@"%@가 %@은행에 %lu를 입금하였습니다",super.name, bank.name, won);
    NSLog(@"%@가 %@은행에서 자신의 계좌를 조회해본 결과, 총 자산은 %lu원입니다", self.name, bank.name, self.asset);
}

//카드만들기
- (void)getCard:(Bank *)ofBank;
{
    NSLog(@"%@가 %@은행에서 카드를 만들었습니다", self.name, ofBank.name);
}

@end
