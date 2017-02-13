//
//  Gugudan.h
//  WhileExercise
//
//  Created by SSangGA on 2017. 2. 1..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Gugudan : NSObject

//구구단
+ (void)gogodan;

//while문 문제-배수찾기
+ (NSString *)findMultipleNum:(NSUInteger)num maxRange:(NSUInteger)maxNum;

//for문 연습문제 - 팩토리얼
+ (void)factorialNumber:(NSUInteger)num;
@end
