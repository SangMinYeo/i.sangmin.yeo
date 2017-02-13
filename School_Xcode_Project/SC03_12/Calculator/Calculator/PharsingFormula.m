//
//  PharsingFormula.m
//  Calculator
//
//  Created by SSangGA on 2017. 1. 24..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "PharsingFormula.h"
@interface PharsingFormula ()

@property NSUInteger pastNumber;
@property NSUInteger inputCount;
@property NSArray *inputNumber;
@property NSString *inputOperation;
@property NSArray *operationArray;
@end

@implementation PharsingFormula

- (instancetype)initWithPastNumber
{
    self = [super init];
    if (self) {
        NSUInteger number = 0;
        NSUInteger count = 0;
        self.pastNumber = number;
        self.inputCount = count;
    }
    return self;
}

- (NSInteger)isNumber:(NSInteger)input
{
    if(input>=0 && input<=9)
    {
        self.pastNumber=self.pastNumber * pow(10,self.inputCount);
        self.pastNumber=input+self.pastNumber;
        self.inputCount=self.inputCount+1;
        self.inputNumber=[NSArrayWithObject:@"self.pastNumber",nil];
        
    } else {
        
    }
    
    return _inputNumber;
}

    




@end
