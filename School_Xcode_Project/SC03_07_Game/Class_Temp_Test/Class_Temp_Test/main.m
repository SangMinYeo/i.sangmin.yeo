//
//  main.m
//  Class_Temp_Test
//
//  Created by SSangGA on 2017. 1. 18..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Gundal.h"
#import "Citizen.h"

int main(int argc, const char * argv[]) {
    
    Gundal *g1 = [[Gundal alloc] init];
    Citizen *c1 = [[Citizen alloc] init];
    [g1 initWithName:@"BongGu" baseHealth:300 punchPower:15 KickPower:20];
    [c1 setCharacterWithName:@"ChulSu" baseHealth:270 punchPower:11 KickPower:22];
    
    [g1 punchTo:c1];
    [c1 kickTo:g1];
    [c1 punchTo:g1];


    return 0;
}
