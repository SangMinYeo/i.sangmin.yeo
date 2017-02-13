//
//  Wizard.h
//  SC03_07_Game
//
//  Created by SSangGA on 2017. 1. 17..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Warrior;

@interface Wizard : NSObject

@property NSUInteger health;
@property NSUInteger mana;
@property NSUInteger physicalPower;
@property NSUInteger magicalPower;
@property NSString *weapon;


- (NSString *) physicalAttackTo:(Warrior *)someCharacter;
- (NSString *) useMana;
- (NSString *) fireBallTo:(Warrior *)someCharacter;
- (NSString *) magicalAttackTo:(Warrior *)someCharacter;


@end
