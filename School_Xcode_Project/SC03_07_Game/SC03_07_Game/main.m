//
//  main.m
//  SC03_07_Game
//
//  Created by SSangGA on 2017. 1. 17..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Warrior.h"
#import "Wizard.h"
#import "Person.h"


int main(int argc, const char * argv[]) {

    Person *ysm = [[Person alloc] init];
    ysm.name = @"여상민";
    ysm.gender = @"male";
    ysm.cellphone = @"010-2983-8830";
    [ysm callTheCellphone];
    
    
    Person *midory = [[Person alloc] init];
    midory.name = @"한유선";
    midory.gender = @"female";
    
    Warrior *rock = [Warrior new];
    rock.physicalPower = @30;
    rock.health = @300;
    
    Warrior *gom = [Warrior new];
    gom.physicalPower = @45;
    gom.health = @250;
    [gom physicalAttack];
    
    Wizard *bubsa = [[Wizard alloc] init];
    bubsa.health = @200;
    bubsa.mana = @150;
    bubsa.magicalPower = @380;
    [bubsa magicalAttack:gom];
    
    
    Wizard *hyunja = [[Wizard alloc] init];
    hyunja.health = @180;
    hyunja.mana = @130;
    hyunja.magicalPower = @400;
    [hyunja magicalAttack];

//    NSLog(@"My name is %@", ysm.name);
//    NSLog(@"%@",bubsa.mana);
//    NSLog(@"법사의 공격력은 %@이고 체력은 %@ 입니다",bubsa.magicalPower, bubsa.health);

    
    
    return 0;
}
