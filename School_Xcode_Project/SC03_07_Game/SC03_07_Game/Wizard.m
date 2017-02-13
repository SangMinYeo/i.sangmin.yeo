    //
//  Wizard.m
//  SC03_07_Game
//
//  Created by SSangGA on 2017. 1. 17..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "Wizard.h"

@implementation Wizard

/**
 물리적으로 적을 공격합니다.
 @brief 물리적 공격을 하기 위한 함수입니다.
 @discussion 이 함수는 적이라는 목적어 없이 그냥 공격한다는 스트링을 출력합니다.
 @param to 상대이름
 */
- (id)physicalAttack:(id)to
{
    NSLog(@"%@를 공격합니다.",to);
    return nil;
}

- (id)useMana
{
    NSLog(@"마나를 씁니다");
    return nil;
}

//- (id)isAttacked
//{
//    NSLog(@"공격을 당합니다");
//    return nil;


- (id)run
{
    NSLog(@"달려갑니다");
    return nil;
}

- (id)fireBall:(id)to
{
    NSLog(@"%@에게 FireBall을 날립니다.",to);
    return nil;
}

/**
 마법으로 적을 공격합니다.
 @brief 마법 공격을 하기 위한 함수입니다.
 @discussion 이 함수는 적에게 마법 공격한다는 스트링을 출력합니다.
 @param to 상대이름
 */
- (id)magicalAttackTo:(Warrior *)someCharacter
{
//    magicalAttackTo값만큼을 someCharacter의 health에서 뺀다.
    id resultHealth = someCharacter.health - self.magicalPower
    return nil;
}

@end
