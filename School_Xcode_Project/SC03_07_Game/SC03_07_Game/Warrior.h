//
//  Warrior.h
//  SC03_07_Game
//
//  Created by SSangGA on 2017. 1. 17..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Wizard;

@interface Warrior : NSObject

@property NSUInteger health;
@property NSUInteger mana;
@property NSUInteger physicalPower;
@property NSUInteger magicalPower;
@property Boolean hadEquipmentWeapon;
@property Boolean isDead;

- (NSString *) physicalAttackTo:(Wizard *)someCharacter;
- (NSString *) wheelWindTo:(Wizard *)someCharacter;
- (NSString *) magicalAttackTo:(Wizard *)someCharacter;
- (NSString *) useMana:()
@end
