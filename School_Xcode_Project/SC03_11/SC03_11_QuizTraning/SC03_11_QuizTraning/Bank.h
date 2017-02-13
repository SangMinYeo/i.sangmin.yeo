//
//  Bank.h
//  SC03_11_QuizTraning
//
//  Created by SSangGA on 2017. 1. 23..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Person;
@interface Bank : NSObject

@property NSString *name; //은행이름 속성
@property NSString *location; //은행 위치 속성

-(void)moveTo:(NSString *)newAddress; //주소변경 메소드
-(void)transfer:(NSUInteger)money //송금메소드
           from:(Person *)from
             to:(Person *)to;

@end
