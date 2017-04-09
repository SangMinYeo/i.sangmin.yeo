//
//  ViewController.m
//  ClassContetns_network
//
//  Created by SSangGA on 2017. 3. 15..
//  Copyright © 2017년 ysm. All rights reserved.
//

#import "ViewController.h"
#import "NetworkModuleViewController.h"

@interface ViewController ()
<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UILabel *loginTitle;
@property (strong, nonatomic) IBOutlet UITextField *loginIDTxt;
@property (weak, nonatomic) IBOutlet UITextField *loginPWTxt;
@property (strong, nonatomic) IBOutlet UIImageView *imageTest;
@property (strong, nonatomic) NetworkModuleViewController *networkObject;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.loginIDTxt.delegate = self;
    self.loginPWTxt.delegate = self;
    [self setFrameStyle];
    
//    self.imageTest.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pbs.twimg.com/media/C2G2NCTUoAIa9EO.jpg"]]];

    
    NSURL *thumbnailURL = [NSURL URLWithString:@"https://pbs.twimg.com/media/C2G2NCTUoAIa9EO.jpg"];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    NSURLSessionTask *task = [session dataTaskWithURL:thumbnailURL completionHandler:^(NSData * _Nullable data,NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (data) {
            UIImage *image = [UIImage imageWithData:data];
            if (image) {
                dispatch_async(dispatch_get_main_queue(), ^{
                    [self.imageTest setImage:image];
                });
            }
        }
    }];
    [task resume];
    
}

//로그인 버튼 액션
- (IBAction)didClickedLogInBtn:(id)sender
{
    
    NetworkModuleViewController *networkModule = [[NetworkModuleViewController alloc] init];
    [networkModule logInWithUserName:self.loginIDTxt.text password:self.loginPWTxt.text completion:^(BOOL sucess, NSDictionary *data) {
        if (sucess) {
            //YES
        } else {
            //NO
        }
    }];
    
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    UIViewController *mainVC = [mainStoryboard instantiateViewControllerWithIdentifier:@"MainViewController"];
    [self.networkObject passAccountToNWmodule:^NSString *{
        return self.loginIDTxt.text;
    } password:^NSString *{
        return self.loginPWTxt.text;
    }];
//    [self.networkObject logIn:<#^(BOOL sucess, NSDictionary *data)completion#>^{
    [self presentViewController:mainVC animated:YES completion:nil];
    [mainVC setModalPresentationStyle:UIModalPresentationFullScreen];
    

}




//SignUp 버튼 액션
- (IBAction)didClickedSignUpBtn:(id)sender
{
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    UIViewController *mainVC = [mainStoryboard instantiateViewControllerWithIdentifier:@"SignUpViewController"];
    [self presentViewController:mainVC animated:YES completion:nil];
    [mainVC setModalPresentationStyle:UIModalPresentationFullScreen];
}


//프레임 스타일 설정
- (void)setFrameStyle
{
    self.loginIDTxt.tag = 1;
    self.loginPWTxt.tag = 2;
    
//    self.loginIDTxt.borderStyle = UITextBorderStyleBezel;
//    self.loginPWTxt.borderStyle = UITextBorderStyleBezel;
//    UIColor *p_color = [UIColor colorWithRed:237 green:206 blue:212 alpha:0];
    UIColor *p_color = [UIColor lightGrayColor];
    self.loginIDTxt.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"ID를 입력하세요" attributes:@{NSForegroundColorAttributeName:p_color}];
    self.loginPWTxt.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"암호를 입력하세요" attributes:@{NSForegroundColorAttributeName:p_color}];

//    UIColor *color = [UIColor whiteColor];
//    self.idTextField.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"User Name" attributes:@{NSForegroundColorAttributeName:color}];
//    self.passwordTextField.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"Password" attributes:@{NSForegroundColorAttributeName:color}];
}



//UITextField delegate
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField.tag == 1) {
        [self.loginPWTxt becomeFirstResponder];
    } else {
    [self.loginPWTxt resignFirstResponder];
    }
    return YES;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
