//
//  Person.h
//  SC03_09_ Inheritance
//
//  Created by SSangGA on 2017. 1. 19..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Food;

@interface Person : NSObject

@property (readonly)NSString* name;
@property (readonly)NSInteger age;
@property (readonly)NSString* face;
@property (readonly)NSInteger height;
@property (readonly)NSInteger weight;
@property (readonly)NSNumber* phoneNumber;

- (void)eatFor:(Food *)food;

@end
