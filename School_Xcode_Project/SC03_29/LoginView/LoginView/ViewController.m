//
//  ViewController.m
//  LoginView
//
//  Created by SSangGA on 2017. 2. 24..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "ViewController.h"
#import "CreateAccountViewController.h"
#import "LoginViewController.h"

@interface ViewController ()
<UITextFieldDelegate>
@property UITextField *inputID;
@property UITextField *inputPW;
@property UILabel *loginDeny;
@property BOOL loginOrNot;
@property UIView *toolbar;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

//    self.view.backgroundColor = [UIColor grayColor];
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
    self.inputPW.borderStyle=UITextBorderStyleBezel;
//    self.inputPW.layer.borderWidth = 3.5;
    self.inputPW.placeholder = @"PW를 입력하세요";
    self.inputPW.tag = 2;
    [self.view addSubview:self.inputPW];
    
//    회원가입버튼
    UIButton *joinBtn = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width*50/100+10, self.view.frame.size.height*60/100, 70, 50)];
//    [joinBtn setBackgroundColor:[UIColor lightGrayColor]];
    [joinBtn setTitle:@"Join Us" forState:UIControlStateNormal];
    [joinBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [joinBtn setTitle:@"Join Us" forState:UIControlStateHighlighted];
    [joinBtn addTarget:self action:@selector(createAccountClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:joinBtn];
    
//    로그인 버튼
    UIButton *loginBtn = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width*50/100-80, self.view.frame.size.height*60/100, 70, 50)];
//    [loginBtn setBackgroundColor:[UIColor lightGrayColor]];
    [loginBtn setTitle:@"Login" forState:UIControlStateNormal];
    [loginBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [loginBtn setTitle:@"Login" forState:UIControlStateHighlighted];
    [loginBtn addTarget:self action:@selector(loginClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:loginBtn];
    
//    아이디 삭제 버튼
    UIButton *del = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width*50/100-80, self.view.frame.size.height*70/100, 70, 50)];
//    [del setBackgroundColor:[UIColor lightGrayColor]];
    [del setTitle:@"아이디   삭   제" forState:UIControlStateNormal];
    [del setTitle:@"아이디   삭   제" forState:UIControlStateHighlighted];
    [del setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [del setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [del.titleLabel setLineBreakMode:NSLineBreakByWordWrapping];
    del.titleLabel.textAlignment = NSTextAlignmentCenter;
    [del addTarget:self action:@selector(delClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:del];
    
    //    아이디 조회 버튼
    UIButton *scanid = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width*50/100+10, self.view.frame.size.height*70/100, 70, 50)];
//    [scanid setBackgroundColor:[UIColor lightGrayColor]];
    [scanid setTitle:@"아이디    조   회" forState:UIControlStateNormal];
    [scanid setTitle:@"아이디    조   회" forState:UIControlStateHighlighted];
    [scanid setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [scanid setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [scanid.titleLabel setLineBreakMode:NSLineBreakByWordWrapping];
    scanid.titleLabel.textAlignment = NSTextAlignmentCenter;
    [scanid addTarget:self action:@selector(scanidClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:scanid];
    
//    로그인 거부 메세지
    self.loginDeny = [[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.size.width*50/100-100, self.view.frame.size.height*80/100, 200, 50)];
    self.loginDeny.text = @"로그인 할 수 없습니다.";
    self.loginDeny.textAlignment = NSTextAlignmentCenter;
    self.loginDeny.textColor = [UIColor redColor];
    self.loginDeny.hidden = YES;
    
    [self.view addSubview:self.loginDeny];
    
//    툴바 키보드 속도 따라가기
    UIView *toolbar = [[UIView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height -40, self.view.frame.size.width, 50)];
    [toolbar setBackgroundColor:[UIColor blueColor]];
    [self.view addSubview:toolbar];
    self.toolbar = toolbar;
    
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(noti:) name:@"NOTI_TEST" object:nil];
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(ketboardNoti:) name:UIKeyboardWillShowNotification object:nil];
    [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(keyboardNoti:) name:UIKeyboardWillShowNotification object:nil];
    [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(keyboardHideNoti:) name:UIKeyboardWillHideNotification object:nil];

}

//    키보드 NSNotification 올리기
- (void)keyboardNoti:(NSNotification *)noti
{
    CGSize keyboardsize = [[noti.userInfo objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue].size;
    CGRect originFrame = self.toolbar.frame;
    self.toolbar.frame = CGRectMake(originFrame.origin.x, originFrame.origin.y - keyboardsize.height, originFrame.size.width, originFrame.size.height);
//    [UIView animateWithDuration:5 animation:^{
//    [UIView animateWithDuration:10 animations:^{
//        self.toolbar.frame = CGRectMake(originFrame.origin.x, originFrame.origin.y - keyboardsize.height, originFrame.size.width, originFrame.size.height);
//    }];
}
//    키보드 NSNotification 내리기
- (void)keyboardHideNoti:(NSNotification *)noti
{
    CGSize keyboardsize = [[noti.userInfo objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue].size;
    CGRect originFrame = self.toolbar.frame;
        self.toolbar.frame = CGRectMake(originFrame.origin.x, originFrame.origin.y + keyboardsize.height, originFrame.size.width, originFrame.size.height);
    //    [UIView animateWithDuration:5 animation:^{
//    [UIView animateWithDuration:10 animations:^{
//        self.toolbar.frame = CGRectMake(originFrame.origin.x, originFrame.origin.y + keyboardsize.height, originFrame.size.width, originFrame.size.height);
//    }];
}

//    회원가입클릭
- (void)createAccountClick:(UIButton *)sender
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    CreateAccountViewController *caVC = [storyboard instantiateViewControllerWithIdentifier:@"CreateAccountViewController"];
    [self presentViewController:caVC animated:YES completion:nil];
}

//    로그인클릭
- (void)loginClick:(UIButton *)sender
{
    self.loginOrNot = [self idCertifyProcess];
    if (self.loginOrNot == YES) {
//      로그인 다음 viewcontroller 넘어가기
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main"  bundle:nil];
        LoginViewController *liVC = [storyboard instantiateViewControllerWithIdentifier:@"LoginViewController"];
        [self presentViewController:liVC animated:YES completion:nil];
    }
    self.loginDeny.hidden = NO;
//    [self.view addSubview:self.loginDeny];
}

//    아이디삭제 클릭
- (void)delClick:(UIButton *)sender
{
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:@"UserId"];
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:@"UserPwd"];
    NSLog(@"아이디가 삭제되었습니다");
}

//    아이디조회릭클릭
- (void)scanidClick:(UIButton *)sender
{
    NSString *ID = [[NSUserDefaults standardUserDefaults] objectForKey:@"UserId"];
    NSString *PW = [[NSUserDefaults standardUserDefaults] objectForKey:@"UserPwd"];
    NSLog(@"ID:%@ PWD:%@", ID, PW);
}

//        userid검증
-(BOOL)idCertifyProcess
{
    NSString *savedID = [[NSUserDefaults standardUserDefaults] objectForKey:@"UserId"];
    NSString *savedPW = [[NSUserDefaults standardUserDefaults] objectForKey:@"UserPwd"];
    if (self.inputID.text == savedID && self.inputPW.text == savedPW)
    {
        return YES;
    }
    NSLog(@"id,pw가 틀렸습니다");
    return NO;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    switch (textField.tag) {
        case 1:
            self.inputID.text = textField.text;
            break;
            
        case 2:
            self.inputPW.text = textField.text;
            break;
        default:
            break;
    }
    [textField resignFirstResponder];
    return YES;
}



@end
