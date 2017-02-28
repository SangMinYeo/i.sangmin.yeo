//
//  ViewController.m
//  ClassContents
//
//  Created by SSangGA on 2017. 2. 21..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    네이게이션아이템 여기에서시작
    
//    self.navigationItem.title = @"My VC";
//    [self.navigationController.navigationBar setBarTintColor:[UIColor lightGrayColor]];
//    
//    UIButton *forward = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 35, 35)];
//    [forward setBackgroundImage:[UIImage imageNamed:@"next_icon.jpg"] forState:UIControlStateNormal];
//    [forward addTarget:self action:@selector(forwardBtnClick:) forControlEvents:UIControlEventTouchUpInside];
//    
//    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithCustomView:forward];
//    self.navigationItem.rightBarButtonItem = item;
//
////    presentForward
//    UIButton *preforward = [[UIButton alloc] initWithFrame:CGRectMake(100,100, 35, 35)];
//    [preforward setBackgroundImage:[UIImage imageNamed:@"next_icon.jpg"] forState:UIControlStateNormal];
//    [preforward addTarget:self action:@selector(presentBtnClick:) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:preforward];
//
//}
//
//
//
//- (void)forwardBtnClick:(UIButton *)sender
//{
//    NSLog(@"Forward");
////    UIStoryboard *sto = [UIStoryboard storyboardWithName:@"SecondViewController" bundle:nil];
//    SecondViewController *svc = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
//    [self.navigationController pushViewController:svc animated:YES];
//    
//}
//
//- (void)presentBtnClick:(UIButton *)sender
//{
//    NSLog(@"presentForware");
//    SecondViewController *svc = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
//    [self.navigationController presentViewController:svc animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
