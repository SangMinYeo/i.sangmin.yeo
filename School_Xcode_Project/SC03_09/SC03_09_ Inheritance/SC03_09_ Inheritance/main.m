//
//  main.m
//  SC03_09_ Inheritance
//
//  Created by SSangGA on 2017. 1. 19..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
   
    Student *ysm = [[Student alloc] init];
    ysm.name = @"SangMin.Yeo";
    ysm.age = 40;
    [ysm study:ysm];
    

    return 0;
}
