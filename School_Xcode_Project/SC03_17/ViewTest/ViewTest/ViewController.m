//
//  ViewController.m
//  ViewTest
//
//  Created by youngmin joo on 2017. 2. 2..
//  Copyright © 2017년 WingsCompany. All rights reserved.
//

#import "ViewController.h"
#import "MyView.h"
@interface ViewController ()
<MyViewDelegate>
@property UILabel *displayLB;
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    MyView *myView = [[MyView alloc] initWithFrame:CGRectMake(40, 40, 100, 100)];
    myView.delegate = self;
    [self.view addSubview:myView];
    
    MyView *myView2 = [[MyView alloc] initWithFrame:CGRectMake(200, 40, 100, 100)];
    myView2.delegate = self;
    [self.view addSubview:myView2];
    
    self.displayLB = [[UILabel alloc] initWithFrame:CGRectMake(40, 250, 100, 30)];
    self.displayLB.text = @"여기에 버튼이 타이틀이 표시될 거에요";
    [self.view addSubview:self.displayLB];
    
    
}

- (void)didSelectedBtn:(UIButton *)btn
{
    self.displayLB.text = btn.titleLabel.text;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
