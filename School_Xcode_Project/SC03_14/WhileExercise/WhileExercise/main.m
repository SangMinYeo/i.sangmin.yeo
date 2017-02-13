//
//  main.m
//  WhileExercise
//
//  Created by SSangGA on 2017. 2. 1..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Gugudan.h"

int main(int argc, const char * argv[]) {
    [Gugudan gogodan];
    Gugudan *baesu = [[Gugudan alloc]init];
    [Gugudan findMultipleNum:3 maxRange:10];
    [Gugudan factorialNumber:2];
    [Gugudan factorialNumber:3];
    [Gugudan factorialNumber:4];
    [Gugudan factorialNumber:5];
    [Gugudan factorialNumber:7];
    
    

    return 0;
}
