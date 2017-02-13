//
//  ViewController.m
//  ClassUIView
//
//  Created by SSangGA on 2017. 2. 2..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    
//    수업내용
    
//    UIView *myView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 300)];
//    myView.backgroundColor = [UIColor blueColor];
//    [self.view addSubview:myView];
//    
//    UIView *subView = [[UIView alloc] init];
//    subView.frame = CGRectMake(10, 30, 200, 200);
//    [subView setBackgroundColor:[UIColor redColor]];
//    [myView addSubview:subView];
//    //iphone6 = 375*667
//    UIView *myView = [[UIView alloc] initWithFrame:CGRectMake(15, 15, 345, 100)];
//    myView.backgroundColor = [UIColor blueColor];
//    [self.view addSubview:myView];
//    
//    UIView *secondView = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.width-30, self.view.frame.size.height-15, 345, 100)];
//    secondView.backgroundColor = [UIColor blueColor];
//    [self.view addSubview:secondView];
    
//    1. 첫번째 뷰
    UIView *pramid1 = [[UIView alloc] initWithFrame:CGRectMake(15, 15, self.view.frame.size.width-30, self.view.frame.size.height-30)];
    pramid1.backgroundColor = [UIColor blueColor];
    [self.view addSubview:pramid1];
    
//    2. 두번째 뷰
    UIView *pramid2 = [[UIView alloc] initWithFrame:CGRectMake(15, 15, pramid1.frame.size.width-30, pramid1.frame.size.height-30)];
    pramid2.backgroundColor = [UIColor redColor];
    [pramid1 addSubview:pramid2];
    
//    3. 세번째 뷰
    UIView *pramid3 = [[UIView alloc] initWithFrame:CGRectMake(15, 15, pramid2.frame.size.width-30, pramid2.frame.size.height-30)];
    pramid3.backgroundColor = [UIColor greenColor];
    [pramid2 addSubview:pramid3];

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
