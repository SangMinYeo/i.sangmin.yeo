//
//  ViewController.m
//  ExerciseButton
//
//  Created by SSangGA on 2017. 2. 3..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *testBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    testBtn.frame = (CGRectMake(100, 100, 30, 50));
    [testBtn setImage:@"bongbong.jpeg" forState:UIControlStateNormal]
    [testBtn setTitle:@"눌러줘요" forState:UIControlStateNormal];
    [testBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [testBtn setImage:@" forState:<#(UIControlState)#>]
    [testBtn setTitle:@"눌렀냐?" forState:UIControlEventTouchUpInside];
    [testBtn setTitleColor:[UIColor blueColor] forState:UIControlEventTouchUpInside];
    [testBtn]
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
