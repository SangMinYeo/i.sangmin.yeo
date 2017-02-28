//
//  SecondViewController.m
//  ClassContents
//
//  Created by SSangGA on 2017. 2. 21..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title = @"My VC";
    [self.navigationController.navigationBar setBarTintColor:[UIColor lightGrayColor]];
     
    UIButton *back = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 35, 35)];
    [back setBackgroundImage:[UIImage imageNamed:@"back"] forState:UIControlStateNormal];
    [back addTarget:self action:@selector(backBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithCustomView:back];
    self.navigationItem.leftBarButtonItem = item;
    
    UIButton *preback = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 35, 35)];
    [preback setBackgroundImage:[UIImage imageNamed:@"back"] forState:UIControlStateNormal];
    [preback addTarget:self action:@selector(dismissbackBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:preback];
}

- (void)backBtnClick:(UIButton *)sender
{
        [self.navigationController popViewControllerAnimated:YES];
}

- (void)dismissbackBtnClick:(UIButton *)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
