//
//  UniversityStudent.h
//  SC03_09_ Inheritance
//
//  Created by SSangGA on 2017. 1. 19..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "Student.h"

@interface UniversityStudent : Student

@property NSString *major;
@property NSInteger stduentNumber;

- (void)goMT;
@end
