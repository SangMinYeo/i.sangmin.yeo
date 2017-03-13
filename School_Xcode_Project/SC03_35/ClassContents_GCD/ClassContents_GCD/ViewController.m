//
//  ViewController.m
//  ClassContents_GCD
//
//  Created by SSangGA on 2017. 3. 13..
//  Copyright © 2017년 ysm. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    dispatch_sync(dispatch_get_main_queue(), ^{
        NSLog(@"1");
    });
    dispatch_sync(dispatch_get_main_queue(), ^{
        NSLog(@"2");
    });
    dispatch_sync(dispatch_get_main_queue(), ^{
        NSLog(@"3");
    });
    dispatch_sync(dispatch_get_main_queue(), ^{
        NSLog(@"4");
    });
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
