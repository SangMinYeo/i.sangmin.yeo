//
//  ExerciseHomeWork.m
//  ClassExerciseHomeWork
//
//  Created by SSangGA on 2017. 1. 31..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "ExerciseHomeWork.h"

//@interface ExerciseHomeWork ()
//@property  NSInteger absoluteNum;
//@property  NSUInteger roundingNum;
//@property  CGFloat roundedNum;
//@property  NSInteger calculatingNum;




@implementation ExerciseHomeWork

//1.절대값 구하기
+ (NSUInteger)transAbsoluteNum:(NSInteger)unsignedIntegerNum
{
    if (unsignedIntegerNum >= 0){
        NSLog(@"절대값은 %ld입니다", unsignedIntegerNum);
        return unsignedIntegerNum;
    } else {
        NSLog(@"절대값은 %ld입니다", (NSUInteger)unsignedIntegerNum * -1);
        return unsignedIntegerNum;
    }
}
//2. 반올림 문제(소수점3째자리에서 반올림)
+ (CGFloat)toBeRounded:(CGFloat)secondDigitNumber
{
    NSUInteger tempNum = secondDigitNumber * 100 + 0.5;
    NSLog(@"지금은 %ld입니다", tempNum);
    NSLog(@"결과값은 %.2lf입니다",(CGFloat)tempNum / 100);
    return tempNum;
}
//3. 무조건 양수결과 계산기
+ (NSUInteger)calculateTwoNum:(NSString *)calcuOP firstNum:(NSInteger)num1 secondNum:(NSInteger)num2;
{
    NSInteger result;
    if ([calcuOP isEqualToString:@"+"]) {
        result = num1 + num2;
        if (result < 0) {
        NSLog(@"%d+%d의 결과는 %d입니다",num1 ,num2 ,result * -1);
        return result;
        } else {
            NSLog(@"%d+%d의 결과는 %d입니다",num1, num2, result);
            return result;
        }
    } else if ([calcuOP isEqualToString:@"-"]) {
        result = num1 - num2;
        if (result < 0) {
            NSLog(@"%d-%d의 결과는 %ld입니다",num1, num2, (NSUInteger)result * -1);
            return result;
        } else {
            NSLog(@"%d-%d의 결과는 %ld입니다",num1, num2, (NSUInteger)result);
        }
    } else {
        NSLog(@"덧셈 뺄셈 외에는 계산이 안됩니다");
        return 0;
    } return 0;
}
// 윤년구하기
+ (NSUInteger)checkLeapYear:(NSUInteger)year {
    if (year % 4 == 0 || ((year % 100 != 0) && (year % 400 == 0))) {
        NSLog(@"%ld는 윤년입니다", year);
        return YES;
    } else {
        NSLog(@"%ld는 윤년이 아닙니다", year);
        return NO;
    }
}

// 윤년활용 매월의 마지막 일
+ (void)lastDayOfMonth:(NSUInteger)month leapYear:(NSUInteger)year
{
    if ([self checkLeapYear:year] == @"Yes") {
        if (month == 1 || month == 3 || month == 5 || month == 7 ||month == 8 || month == 10 || month == 12) {
            NSLog(@"마지막 날은 31일입니다");
        } else if (month == 2){
            NSLog(@"마지막 날은 29일입니다");
        } else {
            NSLog(@"마지막 날은 30일입니다");
        }
    } else {
        if (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12) {
            NSLog(@"마지막 날은 31   일입니다");
        } else if (month == 2) {
            NSLog(@"마지막 날은 28일입니다");
        } else {
            NSLog(@"마지막 날은 30일입니다");
        }
    }
}


@end
