//
//  Bank.m
//  SC03_11_QuizTraning
//
//  Created by SSangGA on 2017. 1. 23..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "Bank.h"
#import "Person.h"
@implementation Bank

-(void)moveTo:(NSString *)newAddress; //주소변경 메소드
{
    NSString *oldAddress = self.location;
    self.location = newAddress;
    NSLog(@"%@은행이 %@에서 %@로 주소를 변경하였습니다.", self.name, oldAddress, self.location);
}
-(void)transfer:(NSUInteger)money //송금메소드
           from:(Person *)from
             to:(Person *)to;
{
    to.asset = to.asset + money;
    from.asset = from.asset - money;
    NSLog(@"%@가 %@에게 %lu를 이체하였습니다.", from.name, to.name, money);
}

@end
