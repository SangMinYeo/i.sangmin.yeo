//
//  main.m
//  PointCalculator
//
//  Created by SSangGA on 2017. 1. 23..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Subject.h"

int main(int argc, const char * argv[]) {
 
    Subject *student = [[Subject alloc] init];
    student.name = @"yongmin";
    [student sumSubject:30 subjectScore2:50 subjectScore3:80 subjectScore4:40];
    
    [student avrg];
    return 0;
}
