//
//  main.m
//  ClassExerciseHomeWork
//
//  Created by SSangGA on 2017. 1. 31..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ExerciseHomeWork.h"

int main(int argc, const char * argv[]) {

    [ExerciseHomeWork transAbsoluteNum:124];
    [ExerciseHomeWork transAbsoluteNum:-124];
    [ExerciseHomeWork toBeRounded:3.4552];
    [ExerciseHomeWork calculateTwoNum:@"+" firstNum:10 secondNum:3];
    [ExerciseHomeWork calculateTwoNum:@"+" firstNum:-3 secondNum:-7];
    [ExerciseHomeWork calculateTwoNum:@"-" firstNum:10 secondNum:3];
    [ExerciseHomeWork calculateTwoNum:@"-" firstNum:3 secondNum:9];
    [ExerciseHomeWork calculateTwoNum:@"-" firstNum:-3 secondNum:-9];
    [ExerciseHomeWork calculateTwoNum:@"*" firstNum:2 secondNum:9];
    [ExerciseHomeWork checkLeapYear:2000];
    [ExerciseHomeWork checkLeapYear:1955];
    [ExerciseHomeWork lastDayOfMonth:3 leapYear:2017];
    
    return 0;
}
