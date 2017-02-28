//
//  SecondViewController.m
//  NewViewController
//
//  Created by SSangGA on 2017. 2. 20..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    UIButton *prevBtn = [[UIButton alloc] initWithFrame:CGRectMake(50, 100, 100, 50)];
    [prevBtn addTarget:self action:@selector(onSelectedBtn:) forControlEvents:UIControlEventTouchUpInside];
    [prevBtn setTitle:@"Prev" forState:UIControlStateNormal];
    [prevBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [prevBtn setTitleColor:[UIColor yellowColor] forState:UIControlStateHighlighted];
    [self.view addSubview:prevBtn];
}

-(void)onSelectedBtn:(UIButton *)sender
{
//    [self dismissViewControllerAnimated:NO completion:nil];
    [self.navigationController popViewControllerAnimated:YES];
    
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
