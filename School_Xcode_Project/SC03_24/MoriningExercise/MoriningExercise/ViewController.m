//
//  ViewController.m
//  MoriningExercise
//
//  Created by SSangGA on 2017. 2. 16..
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

- (NSInteger)colazFunction:(NSString *)input
{
    NSInteger calNum = [input integerValue];
    NSInteger sumNum = calNum;
    for (NSUInteger i = 0; i<=500; i+=1) {
        if (sumNum != 1 || sumNum !=0) {
            if (sumNum % 2 == 0) {
                sumNum = sumNum/2;
            } else if (sumNum % 2 == 1) {
                sumNum = sumNum*3+1;
            }
        } else
            return i;
    }
    
    return -1;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
    NSInteger temp = [self colazFunction:textField.text];
    NSLog(@"%ld",temp);
    self.resultText.text = [NSString stringWithFormat:@"결과:%@",[self colazFunction:textField.text]];
    
    [self.putText resignFirstResponder];
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
