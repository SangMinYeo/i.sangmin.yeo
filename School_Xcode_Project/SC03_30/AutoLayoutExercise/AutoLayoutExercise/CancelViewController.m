//
//  CancelViewController.m
//  AutoLayoutExercise
//
//  Created by SSangGA on 2017. 2. 28..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "CancelViewController.h"

@interface CancelViewController ()
@property (weak, nonatomic) IBOutlet UIButton *cancleBtn;

@end

@implementation CancelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.cancleBtn addTarget:self action:@selector(didClicked:) forControlEvents:UIControlEventTouchUpInside];
}
- (IBAction)didClicked:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
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
