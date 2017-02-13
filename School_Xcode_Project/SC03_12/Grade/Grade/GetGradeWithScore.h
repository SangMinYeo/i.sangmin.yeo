//
//  GetGradeWithScore.h
//  Grade
//
//  Created by SSangGA on 2017. 1. 24..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GetGradeWithScore : NSObject

@property (readonly) NSString *grade;
- (NSString *)getGradeFor:(NSInteger)score;

@end
