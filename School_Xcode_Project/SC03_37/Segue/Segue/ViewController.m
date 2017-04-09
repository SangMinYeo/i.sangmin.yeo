//
//  ViewController.m
//  Segue
//
//  Created by SSangGA on 2017. 3. 23..
//  Copyright © 2017년 ysm. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *vc = [[UIDevice currentDevice] systemVersion];
    NSLog(@"%@",vc);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
