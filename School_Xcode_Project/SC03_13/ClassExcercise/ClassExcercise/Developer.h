//
//  Developer.h
//  ClassExcercise
//
//  Created by SSangGA on 2017. 1. 31..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface Developer : Person

@property NSString *codingAbility;
@property Boolean canNoSleep;
@property NSString *geek;

- (void)setJob:(NSString *)job;

@end
