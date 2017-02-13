//
//  Person.m
//  SC03_11_QuizTraning
//
//  Created by SSangGA on 2017. 1. 23..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "Person.h"
#import "Bank.h"

@implementation Person

- (void)deposit:(NSUInteger)cash
           bank:(Bank *)bank; //cash를 입금
{
    self.asset = self.asset + cash;
    NSLog(@"%@가 %@은행에 %lu를 입금하였습니다.",self.name, bank.name, cash);
}
- (void)checkAccount:(Bank *)bank; //사람이 은행에서 asset을 조회
{
    NSLog(@"%@가 %@은행에서 자신의 계좌를 조회해 본 결과, 총 자산은 %lu원입니다.",self.name, bank.name, self.asset);
}
@end
