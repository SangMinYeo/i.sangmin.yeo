//
//  Woman.m
//  SC03_11_QuizTraning
//
//  Created by SSangGA on 2017. 1. 23..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "Woman.h"

@implementation Woman

-(void)checkBankBook:(Bank *)fromBank;
{
    NSLog(@"%@가 %@은행에서 통장정리를 하였습니다.", self.name, fromBank.name);
}
@end
