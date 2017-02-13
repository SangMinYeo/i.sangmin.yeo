//
//  Weapon.h
//  SC03_07_Game
//
//  Created by SSangGA on 2017. 1. 18..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Warrior;

@interface Weapon : NSObject

@property NSUInteger physicalDamage;
@property NSUInteger magicalDamage;

- (NSString *) addDamageTo: (Warrior *)someCharacter;

@end
