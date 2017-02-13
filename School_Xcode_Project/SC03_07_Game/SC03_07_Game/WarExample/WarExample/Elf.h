//
//  Elf.h
//  WarExample
//
//  Created by SSangGA on 2017. 1. 18..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Human;

@interface Elf : NSObject

@property NSInteger name;
@property NSInteger ap;
@property NSInteger hp;
@property NSInteger mp;
@property NSInteger def;

- (id)attackTo:(Human *)human;

@end
