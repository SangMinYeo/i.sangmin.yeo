//
//  MyView.m
//  ViewTest
//
//  Created by youngmin joo on 2017. 2. 6..
//  Copyright © 2017년 WingsCompany. All rights reserved.
//

#import "MyView.h"

@implementation MyView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor blackColor];
        [self createView];
    }
    return self;
}


- (void)createView
{
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(10, 10, 80, 30)];
    [btn setTitle:@"눌러요" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:btn];
}

- (void)btnClick:(UIButton *)sender
{
    
    [self.delegate didSelectedBtn:sender];
    NSLog(@"title %@",sender.titleLabel.text);
}


@end
