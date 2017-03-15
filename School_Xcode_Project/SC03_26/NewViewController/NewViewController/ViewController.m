//
//  ViewController.m
//  NewViewController
//
//  Created by SSangGA on 2017. 2. 20..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "XenViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *nextBtn = [[UIButton alloc] initWithFrame:CGRectMake(50, 100, 100, 50)];
    [nextBtn addTarget:self action:@selector(onSelectedBtn:) forControlEvents:UIControlEventTouchUpInside];
    [nextBtn setTitle:@"Next" forState:UIControlStateNormal];
    [nextBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [nextBtn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [self.view addSubview:nextBtn];
    
}

- (void)onSelectedBtn:(UIButton *)sender
{
//      다음 페이지로 이동
    
//    **************스토리보드 사용법*************
//    1. 스토리보드 객체 만들기
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    
//    2.뷰컨트롤러 객체 만들기
    SecondViewController *sVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    
    

//    **************Xib 사용법*************
//    XenViewController *xVC = [[XenViewController alloc] initWithNibName:@"XenViewController" bundle:nil];
    
//    3. 페이지 전환
//    [self presentViewController:sVC animated:YES completion:nil];
//    [sVC setModalPresentationCapturesStatusBarAppearance:YES];
    [sVC setModalPresentationStyle:UI];
//    [self presentViewController:sVC animated:YES completion:nil]; //modali 표현
    [self.navigationController pushViewController:sVC animated:YES];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
