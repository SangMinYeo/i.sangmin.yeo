//
//  Exercise.h
//  HomeWork
//
//  Created by SSangGA on 2017. 2. 1..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Exercise : NSObject

//1. 모든 구구단 한번에 보여주기
+ (void)gugudanMap;

//2. 배수찾기(range와 배수를 받아 해당 range 안에 있는 배수를 모두 골라 출력
+ (NSString*)findMultipleNum:(NSUInteger)baesu numberRange:(NSUInteger)range;

//3. 3,6,9의 배수는 *로 표시되며 나머지는 숫자로 표시되는 메소드(max29)
+ (NSString *)find369Num:(NSUInteger)input;
@end
