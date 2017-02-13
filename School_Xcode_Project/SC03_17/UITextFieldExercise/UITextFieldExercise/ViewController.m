//
//  ViewController.m
//  UITextFieldExercise
//
//  Created by SSangGA on 2017. 2. 6..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITextFieldDelegate>

@property UITextField *tf;
@property UIButton *btn;
@property UILabel *lb;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.tf = [[UITextField alloc]initWithFrame:CGRectMake(30, 50, 200, 20)];
    self.tf.delegate = self;
    self.tf.placeholder = @"텍스트입력";
    self.tf.textColor = [UIColor blackColor];
//    self.tf.backgroundColor = [UIColor blueColor];
    self.tf.borderStyle = UITextBorderStyleLine;
    [self.view addSubview:self.tf];
    
    self.btn = [[UIButton alloc]initWithFrame:CGRectMake(250, 50, 70, 20)];
    self.btn.layer.borderWidth = 1;
    self.btn.layer.borderColor = [UIColor blackColor].CGColor;
    [self.btn setTitle:@"확인" forState:UIControlStateNormal];
    [self.btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self.btn setTitle:@"확인" forState:UIControlStateHighlighted];
    [self.btn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [self.btn addTarget:self action:@selector(didClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.btn];
    
    self.lb = [[UILabel alloc]initWithFrame:CGRectMake(20, 80, 150, 20)];
    [self.lb setText:@"결과 :"];
//    NSString *tempString = [NSString stringWithFormat:@"결과:%@",];
    
    [self.view addSubview:self.lb];
}

- (void)didClick:(UIButton *)sender
{
    self.lb.text = [NSString stringWithFormat:@"결과 :%@",self.tf.text];
        NSLog(@"버튼이 클릭되었씁니다");
}

-(BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    self.lb.text = [NSString stringWithFormat:@"결과 :%@",self.tf.text];
    [textField resignFirstResponder];
    return YES;
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    self.lb.text = [NSString stringWithFormat:@"결과 :%@",self.tf.text];
    [textField resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
