//
//  Toolbox.m
//  ClassExcercise
//
//  Created by SSangGA on 2017. 1. 31..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "Toolbox.h"

@implementation Toolbox

+ (bool)checkDeveloper:(Person *)p1;
{
    if ([p1.job isEqualToString:@"Developer"]) {
        NSLog(@"%@는 개발자입니다.", p1.name);
        return true;
        
    } else {
        NSLog(@"%@는 개발자가 아닙니다.", p1.name);
        return false;
        
    }
}

+ (bool)checkDesigner:(Person *)p1;
{
    if ([p1.job isEqualToString:@"Designer"]) {
        NSLog(@"%@는 디자이너입니다", p1.name);
        return true;
      
    } else {
        NSLog(@"%@는 디자이너가 아닙니다", p1.name);
        return false;
        
    }
}


@end
