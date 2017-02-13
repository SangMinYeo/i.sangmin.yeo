//
//  ViewController.m
//  ClassUIImageView
//
//  Created by SSangGA on 2017. 2. 3..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property NSMutableArray *baseBox;
@property NSMutableArray *imageBox;
@property NSMutableArray *titleBox;
@property NSMutableArray *subBox;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat margin = 10;
    CGFloat offsetX = margin;
    CGFloat offsetY = margin;
//    UIView *baseStamp;
//    UIView *imageStamp;
//    UIView *titleStamp;
//    UIView *subBox;
    
//    for (NSUInteger xx=0; xx<3; xx+=1) {
        //baseview
//        xx = xx * 50;
//    [self.view setBackgroundColor:[UIColor blueColor]];
        UIView *baseView = [[UIView alloc] initWithFrame:CGRectMake(20, 50, self.view.frame.size.width-40,90)];
        baseView.layer.borderColor = [UIColor blackColor].CGColor;
        baseView.layer.borderWidth = 1;
        baseView.backgroundColor = [UIColor grayColor];
//        [_baseBox addObject:baseView];
        [self.view addSubview:baseView];
        
        //이미지영역
        UIImageView *profileImg = [[UIImageView alloc] initWithFrame:CGRectMake(offsetX, offsetY, 60, 60)];
        profileImg.image = [UIImage imageNamed:@"img_test.jpeg"];
        profileImg.contentMode = UIViewContentModeScaleToFill;
//        [_imageBox addObject:profileImg];
        [baseView addSubview:profileImg];
        offsetX += profileImg.frame.size.width + margin;
        
        //타이틀영역
        UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(offsetX, offsetY, baseView.frame.size.width-offsetX-margin, 40)];
        titleLabel.text = @"졸리운 수업시간";
        titleLabel.textAlignment = 0;
        titleLabel.font = [UIFont systemFontOfSize:30];
        [baseView addSubview:titleLabel];
        offsetY += titleLabel.frame.size.height + margin;
        
        //sub타이틀영역
        UILabel *subTitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(offsetX, offsetY, baseView.frame.size.width-offsetX-margin, 10)];
        subTitleLabel.text = @"졸지말고 열공";
        subTitleLabel.textAlignment = 0;
        subTitleLabel.font = [UIFont systemFontOfSize:10];
        [baseView addSubview:subTitleLabel];
//    }
    
    offsetY = baseView.frame.size.height + margin + 40;
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem]; //버튼객체
    btn.frame = CGRectMake(baseView.frame.size.width/2-50, offsetY, 100, 35);
    [btn setTitle:@"눌러줭" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn setTitle:@"놓아줭" forState:UIControlStateHighlighted];
    [btn addTarget:self action:@selector(didSelectedbtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)didSelectedbtn:(UIButton *)sender
       {
           NSLog(@"버튼을 클릭했습니다");
       }
    
    // Do any additional setup after loading the view, typically from a nib.



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
