//
//  Teacher.h
//  SC03_07
//
//  Created by SSangGA on 2017. 1. 17..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Teacher : NSObject

@property id name;
@property id age;
@property id payPerMonth;
@property id Subject;

- (id) teachingSubject;
- (id) receivePay;

@end
