//
//  SecondViewController.m
//  ApplicationLifeCycle
//
//  Created by SSangGA on 2017. 2. 13..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIView *test = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 50, 100)];
    test.layer.borderWidth = 1;
    test.layer.borderColor = [UIColor blueColor].CGColor;
    test.alpha = 0.8;
    [self.view addSubview:test];
    NSLog(@"second testView appered");
    
    UIView *test2 = [[UIView alloc]initWithFrame:CGRectMake(100, 400, 50, 100)];
    test.layer.borderWidth = 1;
    test.layer.borderColor = [UIColor redColor].CGColor;
    [self.view addSubview:test2];
    NSLog(@"second test2View appered");
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




-(void)loadView
{
    [super loadView];
    NSLog(@"Secondloadview");
}



-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    NSLog(@"SecondviewWillAppear");
}

-(void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    NSLog(@"SecondviewWillLayoutSubviews");
}

-(void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    NSLog(@"SecondviewDidLayoutSubviews");
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:YES];
    NSLog(@"SecondviewDidAppear");
    
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:YES];
    NSLog(@"SecondviewWillDisappear");
}

-(void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:YES];
    NSLog(@"SecondviewDidDisapper");
}

-(void)dealloc
{
    NSLog(@"second ############################");
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
