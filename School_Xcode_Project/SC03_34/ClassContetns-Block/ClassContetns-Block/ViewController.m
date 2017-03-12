//
//  ViewController.m
//  ClassContetns-Block
//
//  Created by SSangGA on 2017. 3. 10..
//  Copyright © 2017년 ysm. All rights reserved.
//

#import "ViewController.h"
#import "BlockView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet BlockView *blockView;

@property BlockView *block;
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    

    
//    [self.btn setTitle:@"눌러용" forState:UIControlStateNormal];
    
//    [self.btn addTarget:self action:@selector(didTouchedBtn:) forControlEvents:UIControlEventTouchUpInside];
    
    
   [self.blockView passBlock:^NSString *{
       
       return @"sadfsdfsdf";
   }];
    
    
}

//- (IBAction)didTouchedBtn:(id)sender
//{
//    NSLog(@"메소드로 눌러졌어용");
//}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
