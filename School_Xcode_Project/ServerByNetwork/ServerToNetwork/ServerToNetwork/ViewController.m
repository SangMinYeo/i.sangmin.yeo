//
//  ViewController.m
//  ServerToNetwork
//
//  Created by SSangGA on 2017. 3. 19..
//  Copyright © 2017년 ysm. All rights reserved.
//

#import "ViewController.h"
#import "DataCenter.h"

@interface ViewController ()

<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *userNameTxt;
@property (weak, nonatomic) IBOutlet UITextField *passwordTxt;
@property DataCenter *dataCenterObject;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.userNameTxt.delegate = self;
    self.passwordTxt.delegate = self;
    [self setTextFieldFrameStyle];
    
    
}

- (void)setTextFieldFrameStyle
{
    self.userNameTxt.borderStyle = UITextBorderStyleBezel;
    self.passwordTxt.borderStyle = UITextBorderStyleBezel;
}

- (IBAction)clickedLoginBtn:(id)sender
{
    [self.dataCenterObject logInActionFromDC:self.userNameTxt.text Password:self.passwordTxt.text];
    
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    UIViewController *boardVC = [mainStoryboard instantiateViewControllerWithIdentifier:@"BoardViewController"];
    [self presentViewController:boardVC animated:YES completion:nil];
    [boardVC setModalPresentationStyle:UIModalPresentationFullScreen];
}

- (IBAction)clickedSignUpBtn:(id)sender
{
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    UIViewController *signUpVC = [mainStoryboard instantiateViewControllerWithIdentifier:@"SignUpViewController"];
    [self presentViewController:signUpVC animated:YES completion:nil];
    [signUpVC setModalPresentationStyle:UIModalPresentationFullScreen];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
