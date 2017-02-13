//
//  main.m
//  ClassExcercise
//
//  Created by SSangGA on 2017. 1. 31..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Toolbox.h"

int main(int argc, const char * argv[]) {
    Person *me = [[Person alloc] initWithName:@"ysm"];
    me.age = 40;
    me.height = 181;
    me.salary = 40000000;
    me.address = @"경기도 안양시 동안구";
    [me setJob:@"Developer"];
    [me checkBirthdayToday:1102];
    [Toolbox checkDesigner:me];
    [Toolbox checkDeveloper:me];
   
    
    
    
return 0;
}
