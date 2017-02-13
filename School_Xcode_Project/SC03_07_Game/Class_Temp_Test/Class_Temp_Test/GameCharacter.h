//
//  GameCharacter.h
//  Class_Temp_Test
//
//  Created by SSangGA on 2017. 1. 19..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameCharacter : NSObject





- (instancetype) initWithName:(NSString *)name
                   baseHealth:(NSUInteger)baseHealth
                   punchPower:(NSUInteger)punchPower
                    KickPower:(NSUInteger)kickPower;

- (void)punchTo: (GameCharacter *)character;
- (void)kickTo: (GameCharacter *)character;
- (void)surrenderTo: (GameCharacter *)character;
- (void)dead: (GameCharacter *)character;
- (void)jumpTo:(GameCharacter *)character;

@property (readonly) NSString *name;

@end
