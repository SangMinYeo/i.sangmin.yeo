//
//  Bank.h
//  SC03_10_Quiz
//
//  Created by SSangGA on 2017. 1. 20..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Person;


@interface Bank : NSObject


//은행명
@property NSString *name;
//위치
@property NSString *location;

//주소변경
//~은행이 ~에서 ~로 주소를 변경하였습니다
- (void)moveTo:(NSString *)newLocation;
//-이체
//~가 ~에게 ~를 이체하였습니다.
- (void)transfer:(NSUInteger)won toPerson:(Person *)toPerson fromPerson:(Person *)fromPerson;


@end
