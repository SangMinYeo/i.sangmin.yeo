//
//  GetGradeWithScore.m
//  Grade
//
//  Created by SSangGA on 2017. 1. 24..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "GetGradeWithScore.h"

@interface GetGradeWithScore ()
@property NSString *grade;

@end

@implementation GetGradeWithScore

//시험점수를 받아서 점수의 등급을 반환
- (NSString *)getGradeFor:(NSInteger)score
{
    if (score == 100){
        self.grade = @"A+";
        NSLog(@"학생의 성적은 %ld이며 등급은 %@입니다.",score, self.grade);
    } else if (score >= 95){
        self.grade = @"A";
        NSLog(@"학생의 성적은 %ld이며 등급은 %@입니다.",score, self.grade);
    } else if (score >= 90){
        self.grade = @"B+";
        NSLog(@"학생의 성적은 %ld이며 등급은 %@입니다.",score, self.grade);
    } else if (score >= 85){
        self.grade = @"B";
        NSLog(@"학생의 성적은 %ld이며 등급은 %@입니다.",score, self.grade);
    } else if (score >= 80){
        self.grade = @"C+";
        NSLog(@"학생의 성적은 %ld이며 등급은 %@입니다.",score, self.grade);
    } else if (score >= 75){
        self.grade = @"C";
        NSLog(@"학생의 성적은 %ld이며 등급은 %@입니다.",score, self.grade);
    } self.grade = @"F";
    NSLog(@"학생의 성적은 %ld이며 등급은 %@입니다.",score, self.grade);
    return 0;
}

@end
