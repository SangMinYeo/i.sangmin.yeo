//
//  ViewController.m
//  MorningExercise
//
//  Created by SSangGA on 2017. 2. 13..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITextFieldDelegate>
@property UITextField *putText;
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
//하샤드 넘버 메소드 : 문자 입력시 예외처리 없음. 구현필요
- (NSString *)harshadNumber:(NSString *)input

{
    NSInteger inputTotalNum = [input integerValue];
    NSInteger totalNum = 0;
    for (NSUInteger i = 0;i < [input length];i += 1)
    {
        NSInteger inNum = [[input substringWithRange:NSMakeRange(i, 1)] integerValue];
        totalNum = totalNum + inNum;
    }
    if (inputTotalNum % totalNum == 0) {
        NSString *resultText = @"Harshad Number!";
        return resultText;
    } else
    {
        NSString *resultText = @"Not Harshad Number!!!";
        return resultText;
    }
    
}
//키보드 리턴
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    self.resultText.text = [NSString stringWithFormat:@"결과:%@",[self harshadNumber:textField.text]];
    
    [self.putText resignFirstResponder];
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
