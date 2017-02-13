//
//  Subject.h
//  PointCalculator
//
//  Created by SSangGA on 2017. 1. 23..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Subject : NSObject

@property NSString *name;
@property NSUInteger koreanScore;
@property NSUInteger mathematicsScore;
@property NSUInteger englishScore;
@property NSUInteger socialScienceScore;
@property NSUInteger sum;
@property NSUInteger avrg;

//과목의 합
-(CGFloat)sumSubject:(NSUInteger)koreanScore
    subjectScore2:(NSUInteger)mathematicsScore
    subjectScore3:(NSUInteger)englishScore
    subjectScore4:(NSUInteger)socialScienceScore;
//과목의 평균
-(CGFloat)avrgSubject;

@end
