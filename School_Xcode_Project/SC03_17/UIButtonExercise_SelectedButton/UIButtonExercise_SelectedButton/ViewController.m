//
//  ViewController.m
//  UIButtonExercise_SelectedButton
//
//  Created by SSangGA on 2017. 2. 6..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property UIButton *beforeNum;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //baseView
    UIView *btnView = [[UIView alloc]initWithFrame:CGRectMake(self.view.frame.size.width*25/100,self.view.frame.size.height*25/100,self.view.frame.size.width*52/100, self.view.frame.size.height*20/100)];
    btnView.layer.borderWidth = 1;
    btnView.layer.borderColor = [UIColor blueColor].CGColor;
    [self.view addSubview:btnView];
    
    //button1
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn1.frame = CGRectMake(btnView.frame.size.width*1/100, btnView.frame.size.height*10/100, btnView.frame.size.width*48/100, btnView.frame.size.height*25/100);
    btn1.layer.borderWidth = 1;
    btn1.layer.borderColor = [UIColor blueColor].CGColor;
    btn1.backgroundColor = [UIColor blueColor];
    [btn1 setTitle:@"1번 버튼" forState:UIControlStateNormal];
    [btn1 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn1 setTitle:@"1번 버튼" forState:UIControlStateHighlighted];
    [btn1 setTitleColor:[UIColor redColor] forState:UIControlStateSelected];
    [btn1 addTarget:self action:@selector(didselectedbtn:) forControlEvents:UIControlEventTouchUpInside];
    btn1.tag = 1;
    [btnView addSubview:btn1];
    
    //button2
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn2.frame = CGRectMake(btnView.frame.size.width*50/100, btnView.frame.size.height*10/100, btnView.frame.size.width*48/100, btnView.frame.size.height*25/100);
    btn2.layer.borderWidth = 1;
    btn2.layer.borderColor = [UIColor blueColor].CGColor;
    btn2.backgroundColor = [UIColor blueColor];
    [btn2 setTitle:@"2번 버튼" forState:UIControlStateNormal];
    [btn2 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn2 setTitle:@"2번 버튼" forState:UIControlStateFocused];
    [btn2 setTitleColor:[UIColor redColor] forState:UIControlStateSelected];
    [btn2 addTarget:self action:@selector(didselectedbtn:) forControlEvents:UIControlEventTouchUpInside];
    btn2.tag = 2;
    [btnView addSubview:btn2];
    
    //button3
    UIButton *btn3 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn3.frame = CGRectMake(btnView.frame.size.width*1/100, btnView.frame.size.height*60/100, btnView.frame.size.width*48/100, btnView.frame.size.height*25/100);
    btn3.layer.borderWidth = 1;
    btn3.layer.borderColor = [UIColor blueColor].CGColor;
    btn3.backgroundColor = [UIColor blueColor];
    [btn3 setTitle:@"3번 버튼" forState:UIControlStateNormal];
    [btn3 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn3 setTitle:@"3번 버튼" forState:UIControlStateNormal];
    [btn3 setTitleColor:[UIColor redColor] forState:UIControlStateSelected];
    [btn3 addTarget:self action:@selector(didselectedbtn:) forControlEvents:UIControlEventTouchUpInside];
    btn3.tag = 3;
    [btnView addSubview:btn3];
    
    //button4
    UIButton *btn4 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn4.frame = CGRectMake(btnView.frame.size.width*50/100, btnView.frame.size.height*60/100, btnView.frame.size.width*48/100, btnView.frame.size.height*25/100);
    btn4.layer.borderWidth = 1;
    btn4.layer.borderColor = [UIColor blueColor].CGColor;
    btn4.backgroundColor = [UIColor blueColor];
    [btn4 setTitle:@"4번 버튼" forState:UIControlStateNormal];
    [btn4 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn4 setTitle:@"4번 버튼" forState:UIControlStateNormal];
    [btn4 setTitleColor:[UIColor redColor] forState:UIControlStateSelected];
    [btn4 addTarget:self action:@selector(didselectedbtn:) forControlEvents:UIControlEventTouchUpInside];
    btn4.tag = 4;
    [btnView addSubview:btn4];

    //button description
    UILabel *desc = [[UILabel alloc]initWithFrame:CGRectMake(self.view.frame.size.width*35/100, self.view.frame.size.height*48/100, btnView.frame.size.width*75/100, btnView.frame.size.height*20/100)];
    desc.layer.borderWidth = 1;
    desc.layer.borderColor = [UIColor blueColor].CGColor;
    
    [self.view addSubview:desc];
    

    
}

- (void)didselectedbtn:(UIButton *)sender
{
//    if (sender.tag == 1)
//    {
//        
//    }else if (sender.tag == 2)
//    {
//        
//    }
//    NSLog(@"number tag : %ld:", sender.tag);
    
    self.beforeNum.selected = NO;
    
    if (sender.isSelected)
    {
        sender.selected = NO;
    } else
    {
        sender.selected = YES;
    }
    self.beforeNum = sender;
    
    NSLog(@"click");
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
