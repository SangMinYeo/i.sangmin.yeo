//
//  ViewController.h
//  AutoLayOut
//
//  Created by SSangGA on 2017. 2. 27..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, weak)IBOutlet UIView *testView;
@property (nonatomic, weak)IBOutlet UIView *label;
@property (nonatomic, weak)IBOutlet UILabel *ttt;
@property (weak, nonatomic)IBOutlet UILabel *aaaTF;

-(IBAction)btnAction:(UIButton *)sender;

@end

