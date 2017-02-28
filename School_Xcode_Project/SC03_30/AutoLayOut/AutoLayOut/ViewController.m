//
//  ViewController.m
//  AutoLayOut
//
//  Created by SSangGA on 2017. 2. 27..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.testView.backgroundColor = [UIColor blueColor];
    
//    UIButton *btn;
    
}

-(IBAction)touchDownAction:(id)sender
{
    self.ttt.backgroundColor = [UIColor whiteColor];
    self.ttt.text = @"누르고 있군요?";
}

-(IBAction)btnAction:(UIButton *)sender
{
    self.ttt.backgroundColor = [UIColor yellowColor];
    self.ttt.text = @"버튼에서 손을 뗐군요?";
}


- (void)viewDidAppear:(BOOL)animated
{
//    [super viewDidAppear:animated];
//    self.testView.backgroundColor = [UIColor yellowColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
