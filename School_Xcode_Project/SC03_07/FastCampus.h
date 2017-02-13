//
//  FastCampus.h
//  SC03_07
//
//  Created by SSangGA on 2017. 1. 17..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FastCampus : NSObject


//@property id className;
//@property id teacher;
//@property id student;
@property id tuition;
@property id payForTeacher;

- (id) openClass;
- (id) recieveTutionFee;
- (id) assignTeacherToClass;

@end
