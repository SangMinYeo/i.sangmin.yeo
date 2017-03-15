//
//  ViewController.m
//  ClassContetns_network
//
//  Created by SSangGA on 2017. 3. 15..
//  Copyright © 2017년 ysm. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UILabel *loginTitle;
@property (weak, nonatomic) IBOutlet UITextField *loginIDTxt;
@property (weak, nonatomic) IBOutlet UITextField *loginPWTxt;
@property (strong, nonatomic) IBOutlet UIImageView *imageTest;

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
- (IBAction)didClickedLogInBtn:(id)sender
{
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    UIViewController *mainVC = [mainStoryboard instantiateViewControllerWithIdentifier:@"MainViewController"];
    [self presentViewController:mainVC animated:YES completion:nil];
    [mainVC setModalPresentationStyle:UIModalPresentationFullScreen];
}

- (void)setFrameStyle
{
    self.loginIDTxt.borderStyle = UITextBorderStyleNone;
    self.loginPWTxt.borderStyle = UITextBorderStyleNone;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
   
    [self.loginIDTxt resignFirstResponder];
    [self.loginPWTxt resignFirstResponder];
    return nil;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
