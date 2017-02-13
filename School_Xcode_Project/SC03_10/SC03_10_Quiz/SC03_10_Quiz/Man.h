//
//  Man.h
//  SC03_10_Quiz
//
//  Created by SSangGA on 2017. 1. 20..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "Person.h"

@interface Man : Person



//입금(재정의)
- (void)depositOfMoney:(NSUInteger)won toBank:(Bank *)bank;

//카드만들기
- (void)getCard:(Bank *)ofBank;


@end
