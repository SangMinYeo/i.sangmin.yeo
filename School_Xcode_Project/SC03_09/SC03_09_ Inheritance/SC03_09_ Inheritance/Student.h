//
//  Student.h
//  SC03_09_ Inheritance
//
//  Created by SSangGA on 2017. 1. 19..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "Person.h"

@interface Student : Person

@property NSUInteger grade;
@property NSString *schoolName;

- (void)study:(Person *)person;

@end
