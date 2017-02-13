//
//  Exercise.m
//  HomeWork
//
//  Created by SSangGA on 2017. 2. 1..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "Exercise.h"

@implementation Exercise

//1.모든 구구단 한번에 보여주기
+ (void)gugudanMap
{
    NSUInteger result = 1;
    NSString *guguing;
    NSString *ending = @"";
    for (NSUInteger i=1;i<10;i+=1) {
        for (NSUInteger j=1; j<10; j+=1) {
            result = i*j;
            guguing = [NSString stringWithFormat:@"%lu * %lu = %ld | ", (unsigned long)i, (unsigned long)j, result];
            ending = [ending stringByAppendingString:guguing];
        }
        NSString *enter = @"\n";
        ending = [ending stringByAppendingString:enter];
    }NSLog(@"%@",ending);
    
}


//2. 배수찾기(range와 배수를 받아 해당 range 안에 있는 배수를 모두 골라 출력
+ (NSString *)findMultipleNum:(NSUInteger)baesu numberRange:(NSUInteger)range
{
    NSString *result = @"";
    for (NSUInteger i=1 ; i<=range ; i++){
        if (i % baesu == 0){
            NSString *baesuList = [NSString stringWithFormat:@"%ld |",i];
            result = [result stringByAppendingString:baesuList];
        }
    } NSLog(@"%@입니다", result);
        return result;
}

//3. 3,6,9의 배수는 *로 표시되며 나머지는 숫자로 표시되는 메소드(max29)
+ (NSString *)find369Num:(NSUInteger)input
{
    NSString *result = @"";
    for (NSUInteger i=1 ; i <= input; i+=1)
    {
        if (i % 3 == 0) {
            NSString *changeAstrikToNum = [NSString stringWithFormat:@"* |",i];
            result = [result stringByAppendingString:changeAstrikToNum];
        } else {
        NSString *displayString = [NSString stringWithFormat:@"%ld |",i];
        result = [result stringByAppendingString:displayString];
        }
    }
    NSLog(@"%@",result);
    return 0;
}
    
@end
