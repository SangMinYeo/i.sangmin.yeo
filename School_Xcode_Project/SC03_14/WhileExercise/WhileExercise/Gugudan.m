//
//  Gugudan.m
//  WhileExercise
//
//  Created by SSangGA on 2017. 2. 1..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "Gugudan.h"

@implementation Gugudan

//구구단
+ (void)gogodan {
// While문 구구단
//    NSInteger count = 1;
//    while (count < 10){
//        NSInteger dan = 1;
//        while (dan < 10) {
//            NSInteger result = dan * count;
//            NSLog(@"%lu * %lu = %lu",dan, count, result);
//            dan += 1;
//        }        
//        count += 1;
//    }
// For문 구구단
    for (NSInteger dan = 1; dan < 10; dan++)
    {
        for (NSInteger c = 1; c < 10; c++)
        {
            NSInteger result = dan * c;
            NSLog(@"%lu * %lu = %lu",dan, c, result);
        }
    }
}
//while문 연습문제 - 배수찾기
+ (NSString *)findMultipleNum:(NSUInteger)num maxRange:(NSUInteger)maxNum
{
    NSString *baesuList = @"";
    NSInteger index = 1;
    while (index <= maxNum) {
        if (index % num == 0) {
            NSString *findNumStr = [NSString stringWithFormat:@"%lu|",index];
            baesuList = [baesuList stringByAppendingString:findNumStr];
         }
               index += 1;
    }
    NSLog(@"%@입니다",baesuList);
    return baesuList;
}

//for문 연습문제 - 팩토리얼
+ (void)factorialNumber:(NSUInteger)num;
{
    NSUInteger result = 1;
    for (NSUInteger i = 1; i <= num; i+=1) {
        result *= i;
         }
       NSLog(@"%ld의 팩토리얼은 %ld입니다.",num, result);
}
@end
