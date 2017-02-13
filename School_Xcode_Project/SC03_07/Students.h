//
//  Students.h
//  SC03_07
//
//  Created by SSangGA on 2017. 1. 17..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Students : NSObject

@property id name;
@property id age;
@property id statusPaidTuition;
@property id learningAchievement;


- (id) learning;
- (id) payTuition;
- (id) applyToClass;



@end
