//
//  main.m
//  SC03_11_QuizTraning
//
//  Created by SSangGA on 2017. 1. 23..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Man.h"
#import "Woman.h"
#import "Bank.h"

int main(int argc, const char * argv[]) {
    
    //1. 속성부여
    Man *man = [[Man alloc]init];
    man.name = @"남자";
    man.asset = 1000;
    Woman *woman = [[Woman alloc]init];
    woman.name = @"여자";
    woman.asset = 2000;
    Bank *bank = [[Bank alloc]init];
    bank.name = @"기업";
    bank.location = @"서울시 강남구 신사동";

    //2. 남자가 은행에 700원 입금, 여자는 500원 입금
    [man deposit:700 bank:bank];
    [woman deposit:500 bank:bank];
    
    //3. 남자, 여자가 은행에 자신의 자산을 조회
    [man checkAccount:bank];
    [woman checkAccount:bank];
    
    //4. 은행이 제주도로 이전
    [bank moveTo:@"제주도"];
    
    //5. 남자가 여자에게 1000원을 이체
    [bank transfer:1000 from:man to:woman];
    
    return 0;
}
