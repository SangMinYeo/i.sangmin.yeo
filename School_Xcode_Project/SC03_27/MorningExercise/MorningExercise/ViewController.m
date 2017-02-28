//
//  ViewController.m
//  MorningExercise
//
//  Created by SSangGA on 2017. 2. 21..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITextFieldDelegate>
@property UITextField *tf1;
@property UITextField *tf2;
@property UILabel * numLabel1;
@property UILabel * numLabel2;
@property NSUInteger yaksu;
@property NSUInteger baesu;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.tf1.delegate = self;
    self.tf2.delegate = self;
    [self layoutFrame];
    
}


- (void)layoutFrame
{
    self.numLabel1 = [[UILabel alloc] initWithFrame:CGRectMake(30, 100, 70, 70)];
    self.numLabel2 = [[UILabel alloc] initWithFrame:CGRectMake(30, 250, 70, 70)];
    self.tf1 = [[UITextField alloc] initWithFrame:CGRectMake(120, 100, 200, 200)];
    self.tf2 = [[UITextField alloc] initWithFrame:CGRectMake(120, 250, 200, 200)];
    self.numLabel1.text = @"num1";
    self.numLabel2.text = @"num2";
}

- (void)algorithm:(NSString *)num1str num2:(NSString *)num2str
{
    NSUInteger num1 = [num1str integerValue];
    NSUInteger num2 = [num2str integerValue];
    NSUInteger namuji1 = 0;
        if (num1 > num2){
            for
        namuji = num2 % (num1 % num2);
            
    
    }
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self resignFirstResponder];
    
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
