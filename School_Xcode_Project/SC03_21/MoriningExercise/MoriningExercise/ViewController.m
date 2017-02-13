//
//  ViewController.m
//  MoriningExercise
//
//  Created by SSangGA on 2017. 2. 10..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITextFieldDelegate>

@property UITextField *putText;
@property UILabel *resultText;
@property NSString *result;
@property NSString *resultByArray;
@property NSMutableArray *calc;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //텍스트 필드 만들기
    self.putText = [[UITextField alloc]initWithFrame:CGRectMake(50, 50, 200, 30)];
    self.putText.delegate = self;
    self.putText.placeholder = @"입력하세요";
    self.putText.borderStyle = UITextBorderStyleLine;
    self.putText.textColor = [UIColor redColor];
    [self.view addSubview:self.putText];
    
    //결과 레이블 만들기
    self.resultText = [[UILabel alloc]initWithFrame:CGRectMake(50, 100, 200, 30)];
    self.resultText.textColor = [UIColor blackColor];
    self.resultText.text = @"결과:";
    [self.view addSubview:self.resultText];
    
    
}

- (NSString *)returnMiddleText:(NSString *)inputTxt;
{
    // String타입으로 바로 추출
//    self.list = [inputTxt componentsSeparatedByString:@""];
//    NSUInteger txtlength = [inputTxt length];
//    if (txtlength % 2 == 0) {
//        self.result =[inputTxt substringWithRange:NSMakeRange((txtlength/2)-1, 2)];
//    } else {
//        self.result = [inputTxt substringWithRange:NSMakeRange(txtlength/2, 1)];
//    }
//    NSLog(@"%@",self.result);
//    return self.result;
    
    
    // Array에 넣고 추출
    for (NSUInteger i=0; i < [inputTxt length]; i+=1) {
        NSString *temp = [inputTxt substringFromIndex:i];
        [self.calc arrayByAddingObject:temp];
        NSLog(@"%@",self.calc);
    }
    if (self.calc.count % 2 == 0) {
        [self.resultByArray stringByAppendingString:[self.calc objectAtIndex:((self.calc.count/2)-1)]];
    } else if (self.calc.count % 2 == 1){
        [self.resultByArray stringByAppendingString:[self.calc objectAtIndex:(self.calc.count/2)]];
        NSLog(@"%@",self.resultByArray);
        
    
    } return self.resultByArray;
}
//키보드 리턴
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    self.resultText.text = @"결과:@%",[self returnMiddleText:textField.text];
    
    [self.putText resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
