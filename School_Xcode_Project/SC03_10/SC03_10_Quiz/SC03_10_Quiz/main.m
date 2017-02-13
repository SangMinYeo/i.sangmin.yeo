//
//  main.m
//  SC03_10_Quiz
//
//  Created by SSangGA on 2017. 1. 20..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Man.h"
#import "Woman.h"
#import "Bank.h"

int main(int argc, const char * argv[]) {
    
    //1. 남자와 여자 은행 객체 생성 및 적절한 프로퍼티 부여
    Man *man = [[Man alloc] init];
    man.name = @"SangMin,Yeo";
    man.asset = 10000000;
    Woman *woman = [[Woman alloc] init];
    woman.name = @"YooSun.Han";
    woman.asset = 30000000;
    Bank *bank = [[Bank alloc] init];
    bank.name = @"기업";
    bank.location = @"경기도 안양시 평촌동";
    
    //2. 남자가 은행에 700원, 여자가 은행에 500원을 입금하는 메소드 호출
    [man depositOfMoney:700 toBank:bank];
    [woman depositOfMoney:500 toBank:bank];
    
    
    //3. 남자 여자가 은행에 자신의 자산을 조회하는 메소드 호출
    [man checkOwnAccount:bank];
    [woman checkOwnAccount:bank];

    
    //4. 은행이 제주도로 이전하는 메소드 호출
    [bank moveTo:@"제주도"];
    
    //5. 남자가 여자에게 1000원을 이체하는 메소드 호출
    [bank transfer:1000 toPerson:woman fromPerson:man];
    
    return 0;
}
