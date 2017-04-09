//
//  SignUpViewController.m
//  ClassContetns_network
//
//  Created by SSangGA on 2017. 3. 16..
//  Copyright © 2017년 ysm. All rights reserved.
//

#import "SignUpViewController.h"
#import "DataCenter.h"

@interface SignUpViewController ()
<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *txtPW1;
@property (weak, nonatomic) IBOutlet UITextField *txtID;
@property (weak, nonatomic) IBOutlet UITextField *txtPW2;
@property (weak, nonatomic) IBOutlet UITextField *firstName;
@property (weak, nonatomic) IBOutlet UITextField *lastName;
@property (weak, nonatomic) IBOutlet UITextField *email;
@property (weak, nonatomic) IBOutlet UIStackView *stackVW;

@end

@implementation SignUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.txtID.tag = 1;
    self.txtPW1.tag = 2;
    self.txtPW2.tag = 3 ;
    self.lastName.tag = 4;
    self.firstName.tag = 5;
    self.email.tag = 6;
    
    self.txtID.delegate = self;
    self.txtPW1.delegate = self;
    self.txtPW2.delegate = self;
    self.lastName.delegate = self;
    self.firstName.delegate = self;
    self.email.delegate = self;
    

    

}

- (IBAction)didClickedBtn:(id)sender
{
    if (self.txtID.text == nil || self.txtPW1.text == nil || self.txtPW2.text == nil) {
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"빈칸 Error" message:@"아이디 또는 암호에 빈 항목이 있습니다." preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action)
                                   {
                                       NSLog(@"빈칸 발생");
                                   }];
//        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"취소" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action){
//                NSLog(@"cancel");
//            }];
        [alertController addAction:okAction];
        //    [alertController addAction:cancelAction];
        [self presentViewController:alertController animated:YES completion:nil];
    } else if (self.txtPW1.text != self.txtPW2.text) {
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"암호 불일치" message:@"암호 확인이 틀렸습니다." preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action)
                                   {
                                       NSLog(@"비번 불일치");
                                   }];
        [alertController addAction:okAction];
        [self presentViewController:alertController animated:YES completion:nil];
    } else if(self.txtID.text != nil && self.txtPW1.text !=nil && self.txtPW2.text != nil) {
        NSLog(@"");
     
    }

    [self dismissViewControllerAnimated:YES completion:nil];
}



//    키보드 NSNotification 올리기
- (void)keyboardNoti:(NSNotification *)noti
{
    CGSize keyboardsize = [[noti.userInfo objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue].size;
    CGRect originFrame = self.stackVW.frame;
    self.stackVW.frame = CGRectMake(originFrame.origin.x, originFrame.origin.y - keyboardsize.height*2/6, originFrame.size.width, originFrame.size.height);
    
}

//    키보드 NSNotification 내리기
- (void)keyboardHideNoti:(NSNotification *)noti
{
    CGSize keyboardsize = [[noti.userInfo objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue].size;
    CGRect originFrame = self.stackVW.frame;
    self.stackVW.frame = CGRectMake(originFrame.origin.x, originFrame.origin.y + keyboardsize.height*2/6, originFrame.size.width, originFrame.size.height);
    
}


//textfield delegate
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    switch (textField.tag) {
        case 1:
            
            [self.txtPW1 becomeFirstResponder];
            [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(keyboardNoti:) name:UIKeyboardWillShowNotification object:nil];
            [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(keyboardHideNoti:) name:UIKeyboardWillHideNotification object:nil];
            break;
        case 2:
            
            [self.txtPW2 becomeFirstResponder];
            [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(keyboardNoti:) name:UIKeyboardWillShowNotification object:nil];
            [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(keyboardHideNoti:) name:UIKeyboardWillHideNotification object:nil];
            break;
        case 3:
            
            [self.firstName becomeFirstResponder];
            [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(keyboardNoti:) name:UIKeyboardWillShowNotification object:nil];
            [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(keyboardHideNoti:) name:UIKeyboardWillHideNotification object:nil];
            break;
        case 4:
            
            [self.lastName becomeFirstResponder];
            [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(keyboardNoti:) name:UIKeyboardWillShowNotification object:nil];
            [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(keyboardHideNoti:) name:UIKeyboardWillHideNotification object:nil];
            break;
        case 5:
            
            [self.email becomeFirstResponder];
            [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(keyboardNoti:) name:UIKeyboardWillShowNotification object:nil];
            [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(keyboardHideNoti:) name:UIKeyboardWillHideNotification object:nil];
            break;
        case 6:
            [self.email resignFirstResponder];
            break;
        default:
            break;
//    if (textField.tag == 1) {
//        [self.txtPW1 becomeFirstResponder];
//    } else if(textField.tag == 2){
//        [self.txtPW2 becomeFirstResponder];
//    } else if(textField.tag == 3){
//        [self.lastName becomeFirstResponder];
//    } else if(textField.tag == 4){
//        [self.firstName becomeFirstResponder];
//    } else if(textField.tag == 5){
//        [self.email becomeFirstResponder];
//    } else {
//        [self.email resignFirstResponder];
    }
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
