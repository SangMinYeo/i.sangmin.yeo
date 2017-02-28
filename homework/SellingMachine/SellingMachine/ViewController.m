//
//  ViewController.m
//  SellingMachine
//
//  Created by SSangGA on 2017. 2. 5..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "ViewController.h"
#import "ButtonWithPrice.h"

@interface ViewController ()

@property NSInteger totalPrice;
@property UILabel *priceLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //0. bgcolor
    
    [self.view setBackgroundColor:[UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:0.5]];
    //1. DrinkView
    
    UIView *goodsDisplayView = [[UIView alloc]initWithFrame:CGRectMake(self.view.frame.size.width/10, self.view.frame.size.height/10, self.view.frame.size.width*8/10, self.view.frame.size.height*5/10)];
    [goodsDisplayView setBackgroundColor:[UIColor whiteColor]];
    goodsDisplayView.layer.borderWidth = 1;
    goodsDisplayView.layer.borderColor = [UIColor blackColor].CGColor;
    goodsDisplayView.backgroundColor = [UIColor colorWithRed:1  green:1 blue:1 alpha:1];
    [self.view addSubview:goodsDisplayView];
    
    
    //1-1. goodsSelectButton/View
    UIView *bmw1view = [[UIView alloc] initWithFrame:CGRectMake(goodsDisplayView.frame.size.width*2/100, goodsDisplayView.frame.size.height*20/1000, goodsDisplayView.frame.size.width*96/100, goodsDisplayView.frame.size.height*176/1000)];
//    bmw1view.backgroundColor = [UIColor blueColor];
    [goodsDisplayView addSubview:bmw1view];
    
    //1-1. goodSelectButton/UIImgView
    UIImageView *bmw1ImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, goodsDisplayView.frame.size.width*48/100, goodsDisplayView.frame.size.height*176/1000)];
    bmw1ImgView.image = [UIImage imageNamed:@"bmw1.png"];
    bmw1ImgView.contentMode = UIViewContentModeScaleAspectFit;
    [bmw1view addSubview:bmw1ImgView];
    
    //1-1. goodsSelectButton/Button
    ButtonWithPrice *bmw1Btn = [ButtonWithPrice buttonWithType:UIButtonTypeCustom];
    bmw1Btn.frame = CGRectMake(0, 0, goodsDisplayView.frame.size.width*96/100, goodsDisplayView.frame.size.height*176/1000);
    bmw1Btn.price = 35200000;
//    bmw1Btn.layer.borderWidth = 1;
//    bmw1Btn.backgroundColor = [UIColor whiteColor];
    [bmw1Btn setTitle:@"BMW 118d" forState:UIControlStateNormal];
    [bmw1Btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [bmw1Btn setTitleShadowColor:[UIColor grayColor] forState:UIControlStateNormal];
    [bmw1Btn setTitleShadowOffset:CGSizeMake(1, 1)];
    [bmw1Btn setTitleEdgeInsets:UIEdgeInsetsMake(0, 100, 0, 0)];
    [bmw1Btn setTitle:@"BMW 118d" forState:UIControlStateHighlighted];
    [bmw1Btn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [bmw1Btn addTarget:self action:@selector(didSelectedBmw:) forControlEvents:UIControlEventTouchUpInside];
//    [bmw1ImgView setUserInteractionEnabled:YES];
    [bmw1view addSubview:bmw1Btn];
    
    //2-1. goodsSelectButton/View
    UIView *bmw3view = [[UIView alloc] initWithFrame:CGRectMake(goodsDisplayView.frame.size.width*2/100, goodsDisplayView.frame.size.height*216/1000, goodsDisplayView.frame.size.width*96/100, goodsDisplayView.frame.size.height*176/1000)];
    //    bmw1view.backgroundColor = [UIColor blueColor];
    [goodsDisplayView addSubview:bmw3view];
    
    //2-1. goodSelectButton/UIImgView
    UIImageView *bmw3ImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, goodsDisplayView.frame.size.width*48/100, goodsDisplayView.frame.size.height*176/1000)];
    bmw3ImgView.image = [UIImage imageNamed:@"bmw3.png"];
    bmw3ImgView.contentMode = UIViewContentModeScaleAspectFit;
    [bmw3view addSubview:bmw3ImgView];
    
    //2-1. goodsSelectButton/Button
    ButtonWithPrice *bmw3Btn = [ButtonWithPrice buttonWithType:UIButtonTypeCustom];
    bmw3Btn.frame = CGRectMake(0, 0, goodsDisplayView.frame.size.width*96/100, goodsDisplayView.frame.size.height*176/1000);
    bmw3Btn.price = 49900000;
//    bmw3Btn.layer.borderWidth = 1;
//    bmw3Btn.layer.borderColor = [UIColor blueColor].CGColor;
//    bmw3Btn.backgroundColor = [UIColor whiteColor];
    [bmw3Btn setTitle:@"BMW 320d" forState:UIControlStateNormal];
    [bmw3Btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [bmw3Btn setTitleShadowColor:[UIColor grayColor] forState:UIControlStateNormal];
    [bmw3Btn setTitleShadowOffset:CGSizeMake(1, 1)];
    [bmw3Btn setTitleEdgeInsets:UIEdgeInsetsMake(0, 100, 0, 0)];
    [bmw3Btn setTitle:@"BMW 320d" forState:UIControlStateHighlighted];
    [bmw3Btn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [bmw3Btn addTarget:self action:@selector(didSelectedBmw:) forControlEvents:UIControlEventTouchUpInside];
    //    [bmw1ImgView setUserInteractionEnabled:YES];
    [bmw3view addSubview:bmw3Btn];
    
    //3-1. goodsSelectButton/View
    UIView *bmw3tview = [[UIView alloc] initWithFrame:CGRectMake(goodsDisplayView.frame.size.width*2/100, goodsDisplayView.frame.size.height*412/1000, goodsDisplayView.frame.size.width*96/100, goodsDisplayView.frame.size.height*176/1000)];
    //    bmw1view.backgroundColor = [UIColor blueColor];
    [goodsDisplayView addSubview:bmw3tview];
    
    //3-1. goodSelectButton/UIImgView
    UIImageView *bmw3tImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, goodsDisplayView.frame.size.width*48/100, goodsDisplayView.frame.size.height*176/1000)];
    bmw3tImgView.image = [UIImage imageNamed:@"bmw3t.png"];
    bmw3tImgView.contentMode = UIViewContentModeScaleAspectFit;
    [bmw3tview addSubview:bmw3tImgView];
    
    //3-1. goodsSelectButton/Button
    ButtonWithPrice *bmw3tBtn = [ButtonWithPrice buttonWithType:UIButtonTypeCustom];
    bmw3tBtn.frame = CGRectMake(0, 0, goodsDisplayView.frame.size.width*96/100, goodsDisplayView.frame.size.height*176/1000);
    bmw3tBtn.price = 57400000;
//    bmw3tBtn.layer.borderWidth = 1;
//    bmw3tBtn.layer.borderColor = [UIColor blueColor].CGColor;
//    bmw3tBtn.backgroundColor = [UIColor whiteColor];
    [bmw3tBtn setTitle:@"BMW 320d Touring" forState:UIControlStateNormal];
    [bmw3tBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [bmw3tBtn setTitleShadowColor:[UIColor grayColor] forState:UIControlStateNormal];
    [bmw3tBtn setTitleShadowOffset:CGSizeMake(1, 1)];
    [bmw3tBtn setContentHorizontalAlignment:UIControlContentHorizontalAlignmentRight];
    //    [bmw3tBtn setTitleEdgeInsets:UIEdgeInsetsMake(0, 150, 0, 0)];
//    [bmw3tBtn.titleLabel setAdjustsFontSizeToFitWidth:YES];
//    [bmw3tBtn.titleLabel setTextAlignment:NSTextAlignmentRight];
    [bmw3tBtn setTitle:@"BMW 320d Touring" forState:UIControlStateHighlighted];
    [bmw3tBtn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [bmw3tBtn addTarget:self action:@selector(didSelectedBmw:) forControlEvents:UIControlEventTouchUpInside];
    //    [bmw1ImgView setUserInteractionEnabled:YES];
    [bmw3tview addSubview:bmw3tBtn];
    
    //4-1. goodsSelectButton/View
    UIView *bmw4view = [[UIView alloc] initWithFrame:CGRectMake(goodsDisplayView.frame.size.width*2/100, goodsDisplayView.frame.size.height*608/1000, goodsDisplayView.frame.size.width*96/100, goodsDisplayView.frame.size.height*176/1000)];
    //    bmw1view.backgroundColor = [UIColor blueColor];
    [goodsDisplayView addSubview:bmw4view];
    
    //4-1. goodSelectButton/UIImgView
    UIImageView *bmw4ImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, goodsDisplayView.frame.size.width*48/100, goodsDisplayView.frame.size.height*176/1000)];
    bmw4ImgView.image = [UIImage imageNamed:@"bmw4.png"];
    bmw4ImgView.contentMode = UIViewContentModeScaleAspectFit;
    [bmw4view addSubview:bmw4ImgView];
    
    //4-1. goodsSelectButton/Button
    ButtonWithPrice *bmw4Btn = [ButtonWithPrice buttonWithType:UIButtonTypeCustom];
    bmw4Btn.frame = CGRectMake(0, 0, goodsDisplayView.frame.size.width*96/100, goodsDisplayView.frame.size.height*176/1000);
    bmw4Btn.price = 59400000;
//    bmw4Btn.layer.borderWidth = 1;
//    bmw4Btn.layer.borderColor = [UIColor blueColor].CGColor;
//    bmw4Btn.backgroundColor  = [UIColor whiteColor];
    [bmw4Btn setTitle:@"BMW 420d" forState:UIControlStateNormal];
    [bmw4Btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [bmw4Btn setTitleShadowColor:[UIColor grayColor] forState:UIControlStateNormal];
    [bmw4Btn setTitleShadowOffset:CGSizeMake(1, 1)];
    [bmw4Btn setTitleEdgeInsets:UIEdgeInsetsMake(0, 100, 0, 0)];
//    [bmw4Btn setContentHorizontalAlignment:UIControlContentHorizontalAlignmentRight];
    
    
//    [bmw4Btn.titleLabel setFrame:CGRectMake(0, 0, goodsDisplayView.frame.size.width*96/100, goodsDisplayView.frame.size.height*176/1000)];
//    [bmw4Btn.titleLabel]
//    [bmw4Btn.titleLabel setTextAlignment:UITextAlignmentRight];
    
    [bmw4Btn setTitle:@"BMW 420d" forState:UIControlStateHighlighted];
    [bmw4Btn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [bmw4Btn addTarget:self action:@selector(didSelectedBmw:) forControlEvents:UIControlEventTouchUpInside];
    //    [bmw1ImgView setUserInteractionEnabled:YES];
    [bmw4view addSubview:bmw4Btn];
    
    //5-1. goodsSelectButton/View
    UIView *bmw5view = [[UIView alloc] initWithFrame:CGRectMake(goodsDisplayView.frame.size.width*2/100, goodsDisplayView.frame.size.height*804/1000, goodsDisplayView.frame.size.width*96/100, goodsDisplayView.frame.size.height*176/1000)];
    //    bmw1view.backgroundColor = [UIColor blueColor];
    [goodsDisplayView addSubview:bmw5view];
    
    //5-1. goodSelectButton/UIImgView
    UIImageView *bmw5ImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, goodsDisplayView.frame.size.width*48/100, goodsDisplayView.frame.size.height*176/1000)];
    bmw5ImgView.image = [UIImage imageNamed:@"bmw5.png"];
    bmw5ImgView.contentMode = UIViewContentModeScaleAspectFit;
    [bmw5view addSubview:bmw5ImgView];
    
    //5-1. goodsSelectButton/Button
    ButtonWithPrice *bmw5Btn = [ButtonWithPrice buttonWithType:UIButtonTypeCustom];
    bmw5Btn.frame = CGRectMake(0, 0, goodsDisplayView.frame.size.width*96/100, goodsDisplayView.frame.size.height*176/1000);
    bmw5Btn.price = 66300000;
//    bmw5Btn.layer.borderWidth = 1;
//    bmw5Btn.layer.borderColor = [UIColor blueColor].CGColor;
//    bmw5Btn.backgroundColor = [UIColor whiteColor];
    [bmw5Btn setTitle:@"BMW 520d" forState:UIControlStateNormal];
    [bmw5Btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [bmw5Btn setTitleShadowColor:[UIColor grayColor] forState:UIControlStateNormal];
    [bmw5Btn setTitleShadowOffset:CGSizeMake(1, 1)];
    [bmw5Btn setTitleEdgeInsets:UIEdgeInsetsMake(0, 100, 0, 0)];
    [bmw5Btn setTitle:@"BMW 520d" forState:UIControlStateHighlighted];
    [bmw5Btn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [bmw5Btn addTarget:self action:@selector(didSelectedBmw:) forControlEvents:UIControlEventTouchUpInside];
    //    [bmw1ImgView setUserInteractionEnabled:YES];
    [bmw5view addSubview:bmw5Btn];
    
    
    //DisplayView
    
    //6. DisplayView
    UIView *priceDisplayView = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.width/10, self.view.frame.size.height*61/100, self.view.frame.size.width*8/10, self.view.frame.size.height*1/10)];
    priceDisplayView.layer.borderWidth = 1;
    priceDisplayView.layer.borderColor = [UIColor blackColor].CGColor;
    priceDisplayView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:priceDisplayView];
    
    self.totalPrice = 0;
    self.priceLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, priceDisplayView.frame.size.width, priceDisplayView.frame.size.height)];
    self.priceLabel.text = [NSString stringWithFormat:@"잔액 : %ld",self.totalPrice];
    self.priceLabel.textAlignment = NSTextAlignmentCenter;
    //self.priceLabel.font = [UIFont systemFontOfSize:13];
    [priceDisplayView addSubview:self.priceLabel];
    
    
    
    
    //7.cashInsertView
    UIView *cashInsertView = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.width/10, self.view.frame.size.height*72/100, self.view.frame.size.width*8/10, self.view.frame.size.height*24/100)];
    cashInsertView.layer.borderWidth = 1;
    cashInsertView.layer.borderColor = [UIColor blackColor].CGColor;
    cashInsertView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:cashInsertView];
    
    //7-1. cashButton_₩10,000,000
//    UIView *cashView = [[UIView alloc] initWithFrame:CGRectMake(cashInsertView.frame.size.width*20/1000, cashInsertView.frame.size.height*20/1000, cashInsertView.frame.size.width*21/1000, cashInsertView.frame.size.height-cashInsertView.frame.size.height*40/1000)];
//    
    ButtonWithPrice *thoundCashButton = [ButtonWithPrice buttonWithType:UIButtonTypeCustom];
    thoundCashButton.frame = CGRectMake(cashInsertView.frame.size.width*20/1000, cashInsertView.frame.size.height*20/1000, cashInsertView.frame.size.width*210/1000, cashInsertView.frame.size.height-cashInsertView.frame.size.height*40/1000);
    thoundCashButton.price = 10000000;
//    thoundCashButton.layer.borderWidth = 1;
//    thoundCashButton.layer.borderColor = [UIColor blackColor].CGColor;
    thoundCashButton.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:0.4];
    [thoundCashButton setTitle:@"1천만원" forState:UIControlStateNormal];
    [thoundCashButton setTitleShadowColor:[UIColor grayColor] forState:UIControlStateNormal];
    thoundCashButton.titleLabel.shadowOffset = CGSizeMake(1,1);
    [thoundCashButton setTitle:@"1천만원" forState:UIControlStateHighlighted];
    [thoundCashButton addTarget:self action:@selector(didInsertCash:) forControlEvents:UIControlEventTouchUpInside];
    [cashInsertView addSubview:thoundCashButton];
//    [thoundCashButton setAccessibilityIdentif= @"
//    thoundCashButton.accessibilityIdentifier
    
    //7-2. cashButton_₩5,000,000
    ButtonWithPrice *fiveHundredCashButton = [ButtonWithPrice buttonWithType:UIButtonTypeCustom];
    fiveHundredCashButton.frame = CGRectMake(cashInsertView.frame.size.width*270/1000, cashInsertView.frame.size.height*20/1000, cashInsertView.frame.size.width*210/1000, cashInsertView.frame.size.height-cashInsertView.frame.size.height*40/1000);
    fiveHundredCashButton.price = 5000000;
//    fiveHundredCashButton.layer.borderWidth = 1;
//    fiveHundredCashButton.layer.borderColor = [UIColor blackColor].CGColor;
    fiveHundredCashButton.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:0.4];
    [fiveHundredCashButton setTitle:@"5백만원" forState:UIControlStateNormal];
    [fiveHundredCashButton setTitleShadowColor:[UIColor grayColor] forState:UIControlStateNormal];
    fiveHundredCashButton.titleLabel.shadowOffset = CGSizeMake(1,1);
    [fiveHundredCashButton setTitle:@"5백만원" forState:UIControlStateHighlighted];
    [fiveHundredCashButton addTarget:self action:@selector(didInsertCash:) forControlEvents:UIControlEventTouchUpInside];
    [cashInsertView addSubview:fiveHundredCashButton];
    
    //7-3. cashButton_₩1,000,000
    ButtonWithPrice * hundredCashButton = [ButtonWithPrice buttonWithType:UIButtonTypeCustom];
     hundredCashButton.frame = CGRectMake(cashInsertView.frame.size.width*520/1000, cashInsertView.frame.size.height*20/1000, cashInsertView.frame.size.width*210/1000, cashInsertView.frame.size.height-cashInsertView.frame.size.height*40/1000);
    hundredCashButton.price = 1000000;
//    hundredCashButton.layer.borderWidth = 1;
//    hundredCashButton.layer.borderColor = [UIColor blackColor].CGColor;
    hundredCashButton.backgroundColor = [UIColor colorWithRed:0 green:1 blue:0 alpha:0.4];
    [hundredCashButton setTitle:@"백만원" forState:UIControlStateNormal];
    [hundredCashButton setTitleShadowColor:[UIColor grayColor] forState:UIControlStateNormal];
    hundredCashButton.titleLabel.shadowOffset = CGSizeMake(1,1);
    [hundredCashButton setTitle:@"백만원" forState:UIControlStateHighlighted];
    [hundredCashButton addTarget:self action:@selector(didInsertCash:) forControlEvents:UIControlEventTouchUpInside];
    [cashInsertView addSubview: hundredCashButton];
    
    //7-4. cashButton_₩100,000
    ButtonWithPrice *  hundredThousandsCashButton = [ButtonWithPrice buttonWithType:UIButtonTypeCustom];
     hundredThousandsCashButton.frame = CGRectMake(cashInsertView.frame.size.width*770/1000, cashInsertView.frame.size.height*20/1000, cashInsertView.frame.size.width*210/1000, cashInsertView.frame.size.height-cashInsertView.frame.size.height*40/1000);
    hundredThousandsCashButton.price = 100000;
//    hundredThousandsCashButton.layer.borderWidth = 1;
//    hundredThousandsCashButton.layer.borderColor = [UIColor blackColor].CGColor;
    hundredThousandsCashButton.backgroundColor = [UIColor colorWithRed:0.7 green:0.7 blue:0.7 alpha:0.7];
    [hundredThousandsCashButton setTitle:@"십만원" forState:UIControlStateNormal];
    [hundredThousandsCashButton setTitleShadowColor:[UIColor grayColor] forState:UIControlStateNormal];
    hundredThousandsCashButton.titleLabel.shadowOffset = CGSizeMake(1,1);
    [hundredThousandsCashButton setTitle:@"십만원" forState:UIControlStateHighlighted];
    [hundredThousandsCashButton addTarget:self action:@selector(didInsertCash:) forControlEvents:UIControlEventTouchUpInside];
    [cashInsertView addSubview: hundredThousandsCashButton];

    
}

//
- (void)didSelectedBmw:(ButtonWithPrice *)sender
    {
        if (self.totalPrice < sender.price) {
            self.priceLabel.text = [NSString stringWithFormat:@"잔액이 부족합니다 잔액 : %ld",self.totalPrice];
        } else {
            self.totalPrice -= sender.price;
        self.priceLabel.text = [NSString stringWithFormat:@"잔액 : %ld",self.totalPrice];
        }
    }


- (void)didInsertCash:(ButtonWithPrice *)sender
{
    self.totalPrice += sender.price;
    self.priceLabel.text = [NSString stringWithFormat:@"잔액 : %ld",self.totalPrice];
    NSLog(@"%@",sender.titleLabel);
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
