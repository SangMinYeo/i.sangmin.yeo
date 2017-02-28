//
//  ViewController.m
//  MorningExercise
//
//  Created by SSangGA on 2017. 2. 15..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource>
@property UITextField *putText;
@property NSUInteger divisor;
@property UILabel *resultText;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //텍스트 필드 만들기
    self.putText = [[UITextField alloc]initWithFrame:CGRectMake(50, 50, 300, 30)];
    self.putText.delegate = self;
    self.putText.placeholder = @"숫자를 입력하세요";
    self.putText.borderStyle = UITextBorderStyleLine;
    self.putText.textColor = [UIColor redColor];
    [self.view addSubview:self.putText];
    
    //결과 레이블 만들기
    self.resultText = [[UILabel alloc]initWithFrame:CGRectMake(50, 100, 300, 30)];
    self.resultText.textColor = [UIColor blackColor];
    self.resultText.text = @"결과:";
    [self.view addSubview:self.resultText];

}

- (NSString *)divisorFunction:(NSString *)inputNum
{
    
    NSUInteger calcNum = [inputNum integerValue];
    NSString *sumNumString = @"";
    for (NSUInteger i=1;i<=calcNum;i+=1){
        if (calcNum % i == 0) {
            calcNum = calcNum + i;
        }
    }
    sumNumString = [NSString stringWithFormat:@"%ld",calcNum];
    return sumNumString;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    self.resultText.text = [NSString stringWithFormat:@"결과:%@",[self divisorFunction:textField.text]];
    
    [self.putText resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
