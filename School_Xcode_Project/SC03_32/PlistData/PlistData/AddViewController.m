//
//  AddViewController.m
//  PlistData
//
//  Created by SSangGA on 2017. 3. 4..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "AddViewController.h"

@interface AddViewController ()
<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *addFriendTxt;
@property (weak, nonatomic) IBOutlet UITextField *addPhoneTxt;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveBtn;

@end

@implementation AddViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    
    self.addFriendTxt.delegate = self;
    self.addFriendTxt.tag = 1;
    self.addPhoneTxt.delegate = self;
    self.addPhoneTxt.tag = 2;
    
    [self.view addSubview:self.addPhoneTxt];
    [self.view addSubview:self.addFriendTxt];
}

- (IBAction)saveClicked:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    switch (textField.tag) {
        case 1:
            self.addFriendTxt.text = textField.text;
            break;
        case 2:
            self.addPhoneTxt.text = textField.text;
            break;
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
