//
//  Person.h
//  SC03_10_Quiz
//
//  Created by SSangGA on 2017. 1. 20..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Bank.h"

@interface Person : NSObject

//이름
@property NSString *name;
//자산
@property NSUInteger asset;

//-입금 (타입을 정하기 힘들면 결과가 어떻게 나올지 봐라
//"self.name가 bank.name은행에 money를 입금하였습니다.
- (void)depositOfMoney:(NSUInteger)won toBank:(Bank *)bank;

//조회
//self.name가 bank.name은행에서 자신의 계좌를 조회해 본 결과, 총 자산은 ~원 입니다.
- (void)checkOwnAccount:(Bank *)bank;



@end
