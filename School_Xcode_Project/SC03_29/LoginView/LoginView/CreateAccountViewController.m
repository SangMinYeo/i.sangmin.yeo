//
//  CreateAccountViewController.m
//  LoginView
//
//  Created by SSangGA on 2017. 2. 24..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "CreateAccountViewController.h"

@interface CreateAccountViewController ()
<UITextFieldDelegate>

@property UITextField *inputID;
@property UITextField *inputPW;
@end

@implementation CreateAccountViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //    ID입력
    self.inputID = [[UITextField alloc] initWithFrame:CGRectMake(self.view.frame.size.width*50/100-150, self.view.frame.size.height*30/100, 300, 70)];
    self.inputID.delegate = self;
    self.inputID.borderStyle=UITextBorderStyleRoundedRect;
    self.inputID.placeholder = @"ID를 입력하세요";
    self.inputID.tag = 1;
    [self.view addSubview:self.inputID];
    
    //    P력입력
    self.inputPW = [[UITextField alloc] initWithFrame:CGRectMake(self.view.frame.size.width*50/100-150, self.view.frame.size.height*40/100, 300, 70)];
    self.inputPW.delegate = self;
    self.inputPW.borderStyle=UITextBorderStyleRoundedRect;
    self.inputPW.placeholder = @"PW를 입력하세요";
    self.inputPW.tag = 2;
    [self.view addSubview:self.inputPW];

//    회원가입완료 버튼
    UIButton *doneBtn = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width*50/100-35, self.view.frame.size.height*70/100, 70, 50)];
    [doneBtn setBackgroundColor:[UIColor greenColor]];
    [doneBtn setTitle:@"Done" forState:UIControlStateNormal];
    [doneBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [doneBtn setTitle:@"Done" forState:UIControlStateHighlighted];
    [doneBtn addTarget:self action:@selector(doneClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:doneBtn];
    
    
    UIButton *backBtn = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width*50/100-35, self.view.frame.size.height*80/100, 70, 50)];
    [backBtn setBackgroundColor:[UIColor greenColor]];
    [backBtn setTitle:@"뒤로" forState:UIControlStateNormal];
    [backBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [backBtn setTitle:@"뒤로" forState:UIControlStateHighlighted];
    [backBtn addTarget:self action:@selector(backClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:backBtn];
    

}

//    가입완료 행동
- (void)doneClick:(UIButton *)sender
{
    
    [[NSUserDefaults standardUserDefaults] setObject:self.inputID.text forKey:@"UserId"];
    [[NSUserDefaults standardUserDefaults] setObject:self.inputPW.text forKey:@"UserPwd"];
    NSString *idData = [[NSUserDefaults standardUserDefaults] objectForKey:@"UserId"];
    NSString *pwData = [[NSUserDefaults standardUserDefaults] objectForKey:@"UserPwd"];
    NSLog(@"id는 %@, pw는 %@로 저장되었습니다.",idData, pwData);
    [self dismissViewControllerAnimated:YES completion:nil];
}


//    뒤로가기 행동
- (void)backClick:(UIButton *)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
//    텍스트필드 리턴시
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    switch (textField.tag) {
        case 1:
            self.inputID.text = textField.text;
            break;
        case 2:
            self.inputPW.text = textField.text;
        default:
            break;
    }
    [textField resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
