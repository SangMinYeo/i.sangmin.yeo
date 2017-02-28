//
//  MyCustomView.m
//  CustomViewClassContents
//
//  Created by SSangGA on 2017. 2. 17..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "MyCustomView.h"

@interface MyCustomView ()

//프로필 이미지뷰
@property (nonatomic,weak) UIImageView *profileImgView;
@property (nonatomic, weak) UIView *profileTextContainer;

//네임레이블
@property (nonatomic, weak) UILabel *nameLB;
@property (nonatomic, weak) UILabel *titleLB;

//자기소개 레이블
@property (nonatomic, weak) UILabel *profileLB;


@end


@implementation MyCustomView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
//        [self createSubviews];
//        [self updateLayout];
//        [self test];
    }
    return self;
}

- (void)createSubviews
{
//    UIImageView *profileImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"t2.jpg"]];
    UIImageView *profileImgView = [[UIImageView alloc] init];
    profileImgView.layer.cornerRadius = 50;
    profileImgView.clipsToBounds = YES;
    [self addSubview:profileImgView];
    self.profileImgView = profileImgView;
    
    UIView *profileTextContainer = [[UIView alloc] init];
    [self addSubview:profileTextContainer];
    self.profileTextContainer = profileTextContainer;
    
    UILabel *titleLB = [[UILabel alloc]init];
    titleLB.text = @"Profile";
    titleLB.textColor = [UIColor lightGrayColor];
    titleLB.textAlignment = NSTextAlignmentRight;
    titleLB.font = [UIFont systemFontOfSize:9];
    [profileTextContainer addSubview:titleLB];
    self.titleLB = titleLB;
    
    UILabel *nameLB = [[UILabel alloc] init];
    nameLB.textColor = [UIColor blackColor];
    nameLB.textAlignment = NSTextAlignmentCenter;
    nameLB.font = [UIFont boldSystemFontOfSize:20];
    [profileTextContainer addSubview:nameLB];
    self.nameLB = nameLB;
    
    //******************profile MSG*************************
    UILabel *profileLB = [[UILabel alloc] init];
    profileLB.numberOfLines = 0;
    profileLB.lineBreakMode = NSLineBreakByWordWrapping;
    [self addSubview:profileLB];
    self.profileLB = profileLB;
}

//모든 view의 레이아웃에 해당하는 행동을 한다.
- (void)updateLayout
{
    //보통 상수는 대문자로 표현한다. const가 상수의 키워드. 초기화 이후 바꿀 수 없다.
    const CGFloat MARGIN = 15;
    CGFloat offsetX = MARGIN;
    CGFloat offsetY = MARGIN;
    //프로필이미지
    self.profileImgView.frame = CGRectMake(offsetX, offsetY, 100, 100);
    offsetX += self.profileImgView.frame.size.width;
    //텍스트네임부분
    self.profileTextContainer.frame = CGRectMake(offsetX, offsetY, self.frame.size.width-2*MARGIN-100, 100);
    
//    ****텍스트컨테이너 Sub부분
//    self.titleLB
//    self.nameLB
    
    
    offsetX = MARGIN;
    
    offsetY += self.profileImgView.frame.size.height;
    
//    텍스트 디테일 부분
    self.profileLB.frame = CGRectMake(offsetY, offsetY, self.frame.size.width - (MARGIN*2), self.frame.size.height-MARGIN);
}

- (void)test
{
    self.backgroundColor = [UIColor blackColor];
    self.profileImgView.backgroundColor = [ UIColor greenColor];
    self.profileTextContainer.backgroundColor = [UIColor yellowColor];
    self.profileLB.backgroundColor = [UIColor redColor];
}

- (void)setDataWithIMGName:(NSString *)imgUrlStr
                      name:(NSString *)nameStr
                       msg:(NSString *)msgStr
{
    self.profileImgView.image = [UIImage imageNamed:imgUrlStr];
    self.nameLB.text = nameStr;
    self.profileLB.text = msgStr;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
