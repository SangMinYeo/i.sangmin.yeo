//
//  Student.m
//  SC03_09_ Inheritance
//
//  Created by SSangGA on 2017. 1. 19..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "Student.h"

@implementation Student

- (void)study:(Person *)person;
{
    NSLog(@"%@가 공부를 합니다",person.name);
    
}
@end
