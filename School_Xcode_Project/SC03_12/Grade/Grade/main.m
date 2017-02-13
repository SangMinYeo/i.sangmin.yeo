//
//  main.m
//  Grade
//
//  Created by SSangGA on 2017. 1. 24..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GetGradeWithScore.h"
#import "GetPointWithGrade.h"

int main(int argc, const char * argv[]) {
    GetGradeWithScore *s1 = [[GetGradeWithScore alloc] init];
    [s1 getGradeFor:80];
    
    return 0;
}
