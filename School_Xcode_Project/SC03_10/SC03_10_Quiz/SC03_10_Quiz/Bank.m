//
//  Bank.m
//  SC03_10_Quiz
//
//  Created by SSangGA on 2017. 1. 20..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "Bank.h"
#import "Person.h"


@implementation Bank

//주소변경
//~은행이 ~에서 ~로 주소를 변경하였습니다
- (void)moveTo:(NSString *)newLocation;
{
    NSString *fromLocation = self.location;
    self.location = newLocation;
    NSLog(@"%@은행이 %@에서 %@(으)로 주소를 변경하였습니다", self.name, fromLocation, self.location);
}
//-이체
//~가 ~에게 ~를 이체하였습니다.
- (void)transfer:(NSUInteger)won toPerson:(Person *)toPerson fromPerson:(Person *)fromPerson;
{
    NSLog(@"%@가 %@에게 %lu를 이체하였습니다", fromPerson.name, toPerson.name, (unsigned long)won);
}


@end
