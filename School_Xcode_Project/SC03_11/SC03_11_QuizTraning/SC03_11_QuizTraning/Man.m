//
//  Man.m
//  SC03_11_QuizTraning
//
//  Created by SSangGA on 2017. 1. 23..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "Man.h"

@implementation Man

-(void)getCard:(Bank *)bank; //카드만들기 메소드
{
    NSLog(@"%@가 %@은행에서 카드를 만들었습니다.", self.name, bank.name);
}
-(void)deposit:(NSUInteger)cash bank:(Bank *)bank;
{
    [self deposit:cash bank:bank];
    NSLog(@"%@가 %@은행에서 자신의 계좌를 조회해본 결과, 총 자산은 %lu원 입니다.", self.name, bank.name, self.asset);
}
@end
