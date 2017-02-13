//
//  Human.h
//  WarExample
//
//  Created by SSangGA on 2017. 1. 18..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Elf;

@interface Human : NSObject


@property NSInteger name;
@property NSInteger ap;
@property NSInteger hp;
@property NSInteger mp;
@property NSInteger def;

- (id)attackTo:(Elf *)elf;
@end
