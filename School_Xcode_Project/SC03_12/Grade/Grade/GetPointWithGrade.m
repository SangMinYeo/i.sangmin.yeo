//
//  GetPointWithGrade.m
//  Grade
//
//  Created by SSangGA on 2017. 1. 24..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "GetPointWithGrade.h"


@interface GetPointWithGrade ()

@property CGFloat point;

@end


@implementation GetPointWithGrade

- (NSInteger)getPointFor:(GetGradeWithScore *)grade
{ 
    if([grade.grade isEqualToString:@"A+"]){
        self.point = 4.5;
        return self.point;
    } else if([grade.grade isEqualToString:@"A"]){
        self.point = 4.0;
        return self.point;
    } else if([grade.grade isEqualToString:@"B+"]){
        self.point = 3.5;
        return self.point;
    } else if([grade.grade isEqualToString:@"B"]){
        self.point = 3.0;
        return self.point;
    } else if([grade.grade isEqualToString:@"B+"]){
        self.point = 2.5;
        return self.point;
    } else if([grade.grade isEqualToString:@"C+"]){
        self.point = 2.0;
        return self.point;
    } else if([grade.grade isEqualToString:@"C"]){
        self.point = 1.5;
        return self.point;
    } self.point = 0;
    return self.point;
}
@end
