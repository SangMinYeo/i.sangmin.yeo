//
//  LaunchScreenViewController.m
//  Segue
//
//  Created by SSangGA on 2017. 3. 23..
//  Copyright © 2017년 ysm. All rights reserved.
//

#import "LaunchScreenViewController.h"

@interface LaunchScreenVC ()
@property (weak, nonatomic) IBOutlet UIImageView *launchImg;

@end

@implementation LaunchScreenVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIStoryboard *stroyboard = [UIStoryboard storyboardWithName:@"LaunchScreen" bundle:[NSBundle mainBundle]];
    UIViewController *launchScreenViewController = [stroyboard instantiateViewControllerWithIdentifier:@"LaunchScreenViewController"];
    UIImageView *imgVW = [[UIImageView alloc]init];
    imgVW.image = [UIImage imageNamed:@"scarlet_1334_750"];
    
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
