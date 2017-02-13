//
//  AsteriskExercise.m
//  PreStudy
//
//  Created by SSangGA on 2017. 2. 2..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "AsteriskExercise.h"

@implementation AsteriskExercise

//1.asterisk 오름차순정렬
+ (void)dispAsteriskAscending:(NSUInteger)number
{
    NSString *result = @"*";
    NSString *temp = @"*";
    for (NSUInteger i = 1; i <= number ; i += 1) {
        NSLog(@"%@",result);
        result = [result stringByAppendingString:temp];
    }
}

//2. asterisk 내림차순 정렬
+ (void)dispAsteriskDescending:(NSUInteger)number
//{
//}

////3. asterisk 오른정렬
//+ (void)dispAsteriskAlignRight:(NSUInteger)number
//{
//    
//}
//
////4. asterisk 중앙정렬
//+ (void)dispAsteriskAlignCenter:(NSUInteger)number
//{
//    
//}

@end
