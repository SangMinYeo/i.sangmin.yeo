//
//  ExerciseHomeWork.h
//  ClassExerciseHomeWork
//
//  Created by SSangGA on 2017. 1. 31..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import <Foundation/Foundation.h>
//@class ExerciseHomeWork;

@interface ExerciseHomeWork : NSObject
@property  NSInteger absoluteNum;
@property  NSUInteger roundingNum;
@property  CGFloat roundedNum;
@property  NSInteger calculatingNum;

//1.절대값 구하기
+ (NSUInteger)transAbsoluteNum:(NSInteger)unsignedIntegerNum;

//2. 반올림 문제(소수점3째자리에서 반올림)
+ (CGFloat)toBeRounded:(CGFloat)secondDigitNumber;

//3. 무조건 양수결과 계산기
+ (NSUInteger)calculateTwoNum:(NSString *)calcuOP firstNum:(NSInteger)num1 secondNum:(NSInteger)num2;

// 윤년구하기
+ (NSUInteger)checkLeapYear:(NSUInteger)year;

// 윤년활용 매월의 마지막 일
+ (void)lastDayOfMonth:(NSUInteger)month leapYear:(NSUInteger)year;
@end
