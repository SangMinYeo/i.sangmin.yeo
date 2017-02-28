//
//  CustomView.m
//  AutoLayOut
//
//  Created by SSangGA on 2017. 2. 27..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "CustomView.h"

@interface CustomView ()

@property (nonatomic, weak)IBOutlet UIImageView *customImg;
@property (nonatomic, weak)IBOutlet UILabel *label1;
@property (nonatomic, weak)IBOutlet UILabel *label2;
@end

@implementation CustomView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
