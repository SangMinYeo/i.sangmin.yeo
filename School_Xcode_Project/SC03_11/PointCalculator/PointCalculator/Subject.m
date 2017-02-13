//
//  Subject.m
//  PointCalculator
//
//  Created by SSangGA on 2017. 1. 23..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "Subject.h"

@implementation Subject

//과목의 합
-(CGFloat)sumSubject:(NSUInteger)koreanScore
    subjectScore2:(NSUInteger)mathematicsScore
    subjectScore3:(NSUInteger)englishScore
    subjectScore4:(NSUInteger)socialScienceScore;
{
//    NSUInteger sumScore;
    self.sum = koreanScore + mathematicsScore + englishScore + socialScienceScore;
    NSLog(@"점수의 합은 %lu입니다",self.sum);
    return self.sum;
}
//과목의 평균
-(CGFloat)avrgSubject
{
    self.avrg = self.sum/4;
    NSLog(@"점수의 평균은 %lu입니다.", self.avrg);
    return self.avrg;
}

@end
