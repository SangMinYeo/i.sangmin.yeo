//
//  Person.h
//  SC03_11_QuizTraning
//
//  Created by SSangGA on 2017. 1. 23..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bank.h"
@interface Person : NSObject

@property NSString *name; //이름 속성
@property NSUInteger asset; //자산 속성

- (void)deposit:(NSUInteger)cash
           bank:(Bank *)bank; //cash를 입금
- (void)checkAccount:(Bank *)bank; //사람이 은행에서 asset을 조회
@end
