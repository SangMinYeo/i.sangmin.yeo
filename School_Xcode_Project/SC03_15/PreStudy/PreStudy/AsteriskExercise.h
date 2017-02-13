//
//  AsteriskExercise.h
//  PreStudy
//
//  Created by SSangGA on 2017. 2. 2..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AsteriskExercise : NSObject

//1.asterisk 오름차순정렬
+ (void)dispAsteriskAscending:(NSUInteger)number;

//2. asterisk 내림차순 정렬
+ (void)dispAsteriskDescending:(NSUInteger)number;

//3. asterisk 오른정렬
+ (void)dispAsteriskAlignRight:(NSUInteger)number;

//4. asterisk 중앙정렬
+ (void)dispAsteriskAlignCenter:(NSUInteger)number;
@end
