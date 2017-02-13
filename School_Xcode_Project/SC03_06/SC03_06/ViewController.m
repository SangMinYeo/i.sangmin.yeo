//
//  ViewController.m
//  SC03_06
//
//  Created by SSangGA on 2017. 1. 16..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    NSLog(@"브레이크 포인트 전");
    
    NSLog(@"브레이크 포인트 후");
    
    NSLog(@"중간 공백......");
    
    NSLog(@"다음 브레이트 포인트 전");
    
    NSLog(@"다음 브레이트 포인트 후");

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnAction
{
    [self.titleLB setText:@"문법 특강 헷갈림\n빡시게 공부하자"];
    
//    NSLog(@"버튼이 클릭되었습니다");

}

//- (IBAction)segAction
//{
//    
//   
//}
@end
