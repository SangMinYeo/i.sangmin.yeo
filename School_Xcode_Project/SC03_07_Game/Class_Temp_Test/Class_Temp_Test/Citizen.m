//
//  Citizen.m
//  Class_Temp_Test
//
//  Created by SSangGA on 2017. 1. 18..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "Citizen.h"
#import "Gundal.h"

@implementation Citizen

/* 건달의 체력 > 시민의 펀치력일 때 (건달의 체력-자신(시민)의 펀치력) 값을 시민의 체력에 반영하고
 suddenderTo함수를 호출. 그 외에는  dead함수 호출*/
//- (void) punchTo: (Gundal *)person;
//{
//    if (person.health > self.punchPower){
//        person.health = person.health - self.punchPower;
//        NSLog(@"시민이 건달에게 펀치를 날려서 건달의 체력이 %lu 남았습니다.", (unsigned long)person.health);
//        [self surrenderTo:person];
//    } else {
//        [self dead];
//    }
//}
//    
//- (void) kickTo: (Gundal *)person;
//{
//    if (person.health > self.kickPower){
//        person.health = person.health - self.kickPower;
//        NSLog(@"시민이 건달에게 하이킥을 하여 건달의 체력이 %lu 남았습니다.", (unsigned long)person.health);
//        [self surrenderTo:person];
//    } else {
//        NSLog(@"건달이 도망갑니다");
//        return;
//    }
//}
///* 건달의 체력이 20% 이하일때 돈을 뜯기고 20% 초과일때 계속 반항한다. */
//- (void) surrenderTo: (Gundal *)person;
//{
//    CGFloat health = (CGFloat)person.health / (CGFloat)person.baseHealth * 100;
//    if (health <= 20){
//            NSLog(@"건달이 도망갑니다.");
//    } else {
//        [self dead];
//    }
//}
///* 건달의 체력이 0이하일때 사망하고 리턴값 종료. */
//- (void) dead;
//{
//    NSLog(@"건달이 뻗었습니다");
//}
//
//- (void)jumpTo:(GameCharacter *)character
//{
//    [super jumpTo:(GameCharacter *)character];
//    NSLog(@"%@에게로 약하게 점프합니다.", character.name);
//}
@end
