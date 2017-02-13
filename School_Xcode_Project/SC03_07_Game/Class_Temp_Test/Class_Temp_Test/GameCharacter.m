//
//  GameCharacter.m
//  Class_Temp_Test
//
//  Created by SSangGA on 2017. 1. 19..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "GameCharacter.h"


@interface GameCharacter ()

@property (readwrite)NSString *name;
@property (readwrite)NSUInteger health;
@property (readwrite)NSUInteger punchPower;
@property (readwrite)NSUInteger kickPower;
@property (readwrite)NSUInteger baseHealth;

@end

@implementation GameCharacter


- (instancetype) initWithName:(NSString *)name
           baseHealth:(NSUInteger)baseHealth
           punchPower:(NSUInteger)punchPower
            KickPower:(NSUInteger)kickPower;
{
    self = [super init];
    self.name = name;
    self.baseHealth = baseHealth;
    self.health = baseHealth;
    self.punchPower = punchPower;
    self.kickPower = kickPower;
    return self;
}


- (void) punchTo: (GameCharacter *)character;
{
    if (character.health > self.punchPower) {
        character.health = character.health - self.punchPower;
        NSLog(@"%@이(가) %@에게 펀치를 날려서 %@의 체력이 %lu 남았습니다.", self.name, character.name, character.name, (unsigned long)character.health);
        [self surrenderTo: (GameCharacter *)character];
    } else {
        [self dead: (GameCharacter *)character];
    }
}

- (void) kickTo: (GameCharacter *)character;
{
    if (character.health > self.kickPower)
    {
        character.health = character.health - self.kickPower;
        NSLog(@"%@이(가) %@에게 발길질을 하여 %@의 체력이 %lu 남았습니다.", self.name, character.name, character.name, (unsigned long)character.health);
        [self surrenderTo: (GameCharacter *)character];
    } else {
        [self dead: (GameCharacter *)character];
    }
}

/* 상대의 체력이 20%이하일때 돈을 뜯기고 20%초과일때 계속 반항한다. */
- (void) surrenderTo: (GameCharacter *)character;
{
    CGFloat health = (CGFloat)character.health / (CGFloat)character.baseHealth * 100;
    if (health <= 20){
        NSLog(@"%@이(가) 도망갑니다.", character.name);
        return;
    } else {
        NSLog(@"%@이(가) 아직 싸울 자세를 취합니다.", character.name);
    }
}
/* 시민의 체력이 0이하일때 사망하고 리턴값 종료. */
- (void) dead: (GameCharacter *)character;
{
    NSLog(@"%@이(가) 사망하였습니다",character.name);
    return;
}

- (void)jumpTo:(GameCharacter *)character;
{
    NSLog(@"%@에게로 점프합니다.", character.name);
}
@end
