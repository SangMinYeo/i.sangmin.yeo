//
//  Elf.m
//  WarExample
//
//  Created by SSangGA on 2017. 1. 18..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "Elf.h"

@implementation Elf

- (void)attackTo:(Human *)human;
{
    Elf *e1 = [[Elf alloc] init];
    e1.name = @"젤다";
    e1.hp = 90;
    e1.mp = 50;
}
@end
