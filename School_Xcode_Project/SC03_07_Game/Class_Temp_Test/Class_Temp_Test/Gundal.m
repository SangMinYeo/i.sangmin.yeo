//
//  Gundal.m
//  Class_Temp_Test
//
//  Created by SSangGA on 2017. 1. 18..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "Gundal.h"
#import "Citizen.h"

@implementation Gundal

/* 시민의 체력>건달의펀치력일 때 (시민의 체력-자신(건달)의 펀치력) 값을 시민의 체력에 반영하고
suddenderTo함수를 호출*. 그 외에는  dead함수 호출*/
// - (void) punchTo: (Citizen *)person;
//{
//    if (person.health > self.punchPower) {
//    person.health = person.health - self.punchPower;
//    NSLog(@"건달이 시민에게 선빵을 날려서 시민의 체력이 %lu 남았습니다.", (unsigned long)person.health);
//    [self surrenderTo: person];
//    } else {
//        [self dead];
//    }
//}

//- (void) kickTo: (Citizen *)person;
//{
//    if (person.health > self.kickPower)
//    {
//        person.health = person.health - self.kickPower;
//        NSLog(@"건달이 시민에게 발길질을 하여 시민의 체력이 %lu 남았습니다.", (unsigned long)person.health);
//        [self surrenderTo:person];
//    } else {
//        [self dead];
//    }
//}
//
///* 시민의 체력이 20%이하일때 돈을 뜯기고 20%초과일때 계속 반항한다. */
//- (void) surrenderTo: (Citizen *)person;
//{
//    CGFloat health = (CGFloat)person.health / (CGFloat)person.baseHealth * 100;
//    if (health <= 20){
//        NSLog(@"시민이 돈을 뜯깁니다.\v\n");
//        return;
//    } else {
//        NSLog(@"시민이 아직 반항합니다.\v\n");
//    }
//}
///* 시민의 체력이 0이하일때 사망하고 리턴값 종료. */
//- (void) dead;
//{
//    NSLog(@"시민이 사망하였습니다");
//    return;
//}
@end
