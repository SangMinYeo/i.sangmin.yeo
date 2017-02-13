//
//  Man.h
//  SC03_11_QuizTraning
//
//  Created by SSangGA on 2017. 1. 23..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "Person.h"
@class Bank;
@interface Man : Person

-(void)getCard:(Bank *)bank; //카드만들기 메소드
-(void)deposit:(NSUInteger)cash bank:(Bank *)bank; //입금(재정의)
@end
