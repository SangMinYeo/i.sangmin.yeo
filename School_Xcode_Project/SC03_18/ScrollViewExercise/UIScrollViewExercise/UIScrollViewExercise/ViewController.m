//
//  ViewController.m
//  UIScrollViewExercise
//
//  Created by SSangGA on 2017. 2. 7..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "ViewController.h"
#import "LoginPassViewController.h"

@interface ViewController ()
<UIScrollViewDelegate,UITextFieldDelegate>
@property UIScrollView *loginScView;
@property UIView *loginContents;
@property UITextField *txtFldID;
@property UITextField *txtFldPW;
@property LoginPassViewController *sVC;
//@property UIView *loginContents2;
//@property UIView *loginContents3;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    //1. scrollview설정(수평3배)
//    UIScrollView *sc = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
//    [sc setContentSize:CGSizeMake(sc.frame.size.width*3,sc.frame.size.height)];
//    sc.delegate = self;
//    sc.pagingEnabled = YES;
//    sc.bounces = NO;
//    sc.minimumZoomScale = 0.5;
//    sc.maximumZoomScale = 3.0;
////    [sc setMaximumZoomScale:3.0];
//    [self.view addSubview:sc];
//    
//    //2. contentview설정(1번째)
//    UIView *cv1 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, sc.frame.size.width, sc.frame.size.height)];
//    cv1.backgroundColor = [UIColor blueColor];
//    [sc addSubview:cv1];
//    
////    UILabel *lb = [[UILabel alloc]initWithFrame:CGRectMake(50, 50, 50, 50)];
////    lb.layer.borderColor = [UIColor blackColor].CGColor;
////    lb.layer.borderWidth = 1;
////    [cv1 addSubview:lb];
//    
//    UIView *cv2 = [[UIView alloc]initWithFrame:CGRectMake(sc.frame.size.width, 0, sc.frame.size.width, sc.frame.size.height)];
//    cv2.backgroundColor = [UIColor greenColor];
//    [sc addSubview:cv2];
//    
//    UIView *cv3 = [[UIView alloc]initWithFrame:CGRectMake(sc.frame.size.width*2, 0, sc.frame.size.width, sc.frame.size.height)];
//    cv3.backgroundColor = [UIColor redColor];
//    [sc addSubview:cv3];
    
    //1. LoginPageScrollView
    self.loginScView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.loginScView setContentSize:CGSizeMake(self.view.frame.size.width*3, self.view.frame.size.height*130/100)];
    self.loginScView.delegate = self;
    self.loginScView.pagingEnabled = YES;
    [self.view addSubview:self.loginScView];
    
//    //2. LoginPageContentView
//    self.loginContents = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.loginScView.frame.size.width*3, self.loginScView.frame.size.height*130/100)];
//    [self.loginScView addSubview:self.loginContents];
    
//    //2.1 loginPageContentView_2page
//    self.loginContents2 = [[UIView alloc]initWithFrame:CGRectMake(self.loginScView.frame.size.width, 0, self.loginScView.frame.size.width, self.loginScView.frame.size.height)];
//    [self.loginScView addSubview:self.loginContents2];
//    
//    //2.2 loginPageContentView_3page
//    self.loginContents3 = [[UIView alloc]initWithFrame:CGRectMake(self.loginScView.frame.size.width*2, 0, self.loginScView.frame.size.width, self.loginScView.frame.size.height)];
//    [self.loginScView addSubview:self.loginContents3];
    
    //3. ImgView_1page
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    imgView.image = [UIImage imageNamed:@"IMG_3178.JPG"];
    imgView.contentMode = UIViewContentModeScaleAspectFit;
    [self.loginScView addSubview:imgView];
    
    //3.1 imgview_2page
    UIImageView *imgView2 = [[UIImageView alloc] initWithFrame:CGRectMake(self.view.frame.size.width*1, 0, self.view.frame.size.width, self.view.frame.size.height)];
    imgView2.image = [UIImage imageNamed:@"IMG_3194.JPG"];
    imgView2.contentMode = UIViewContentModeScaleAspectFit;
    [self.loginScView addSubview:imgView2];
    
    //3.1 imgview_3page
    UIImageView *imgView3 = [[UIImageView alloc] initWithFrame:CGRectMake(self.view.frame.size.width*2, 0, self.view.frame.size.width, self.view.frame.size.height)];
    imgView3.image = [UIImage imageNamed:@"IMG_3179.JPG"];
    imgView3.contentMode = UIViewContentModeScaleAspectFit;
    [self.loginScView addSubview:imgView3];

    
//    // Label&TextField View
//    UIView *fix = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
//    fix.backgroundColor = [UIColor greenColor];
//    [self.loginScView addSubview:fix];
    
    
    //4. SetTitleLabel
    UILabel *titleLb = [[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2-(self.view.frame.size.width*35/100), 250, self.view.frame.size.width*70/100, self.loginScView.frame.size.height*5/100)];
    titleLb.text = @"로그인";
    titleLb.textAlignment = NSTextAlignmentCenter;
    titleLb.font = [UIFont boldSystemFontOfSize:30.0];
    titleLb.textColor = [UIColor redColor];
    [self.view addSubview:titleLb];

    
    //5. UITextField_ID
    self.txtFldID = [[UITextField alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2-(self.view.frame.size.width*25/100), 300, self.view.frame.size.width*50/100, self.loginScView.frame.size.height*4/100)];
    self.txtFldID.delegate = self;
    self.txtFldID.textAlignment = NSTextAlignmentCenter;
    self.txtFldID.placeholder = @"id를 입력하세요";
    self.txtFldID.textColor = [UIColor blackColor];
    self.txtFldID.backgroundColor = [UIColor whiteColor];
    self.txtFldID.borderStyle = UITextBorderStyleLine;
    [self.txtFldID setText:@"test"];
    [self.view addSubview:self.txtFldID];
    
    //6. UITextField_PW
    self.txtFldPW = [[UITextField alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2-(self.view.frame.size.width*25/100), 340, self.view.frame.size.width*50/100, self.loginScView.frame.size.height*4/100)];
    self.txtFldPW .delegate = self;
    self.txtFldPW .textAlignment = NSTextAlignmentCenter;
    self.txtFldPW .placeholder = @"암호를 입력하세요";
    self.txtFldPW .textColor = [UIColor blackColor];
    self.txtFldPW .backgroundColor = [UIColor whiteColor];
    self.txtFldPW .secureTextEntry = YES;
    self.txtFldPW .borderStyle = UITextBorderStyleLine;
    [self.view addSubview:self.txtFldPW ];
    
    //7. login_sucess_message_view
    UIView *msgView = [[UIView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height*80/100, self.view.frame.size.width, self.view.frame.size.height*20/100)];
    msgView.layer.borderColor = [UIColor redColor].CGColor;
    msgView.layer.borderWidth = 2;
//    msgView.alpha = 0.1;
    msgView.hidden = YES;
    
//    NSMutableArray
    
    [self.view addSubview:msgView];
    
    UILabel * msgSucess = [[UILabel alloc] initWithFrame:CGRectMake(msgView.frame.size.width*10/100, msgView.frame.size.height*50/100, self.view.frame.size.width*80/100, self.view.frame.size.height*5/100)];
    msgSucess.text = @"로그인 성공";
    msgSucess.textAlignment = NSTextAlignmentCenter;
    msgSucess.textColor = [UIColor whiteColor];
    msgSucess.adjustsFontSizeToFitWidth = YES;
    [msgView addSubview:msgSucess];

    UIButton *nextBtn = [[UIButton alloc] initWithFrame:CGRectMake(50, 100, 100, 50)];
    [nextBtn addTarget:self action:@selector(onSelectedBtn:) forControlEvents:UIControlEventTouchUpInside];
    [nextBtn setTitle:@"Next" forState:UIControlStateNormal];
    [nextBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [nextBtn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [self.view addSubview:nextBtn];
    

//    UIPageControl *pgcon = [[UIPageControl alloc]initWithFrame:CGRectMake(self.view.frame.size.width*40/100, self.view.frame.size.height*950/1000, self.view.frame.size.width*10/100, self.view.frame.size.height*50/1000)];
//    pgcon.numberOfPages = 3;
//    pgcon.currentPage = 1;
//    [self.view addSubview:pgcon];
}

-(void)onSelectedBtn:(UIButton *)sender
{
//    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    LoginPassViewController *sVC = [self.storyboard instantiateViewControllerWithIdentifier:@"LoginPassViewController"];
    [self.navigationController pushViewController:sVC animated:YES];
}

-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
//    [self.loginScView setContentOffset:CGPointMake(0, self.view.frame.size.height*30/100) animated:YES];
    return YES;
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
//    [self.loginScView setContentOffset:CGPointMake(0,0) animated:YES];
    

    
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
