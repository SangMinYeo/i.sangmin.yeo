//
//  HomeWorkTableViewCell.m
//  CustomTableViewReview
//
//  Created by SSangGA on 2017. 2. 19..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "HomeWorkTableViewCell.h"

@interface HomeWorkTableViewCell ()
//@property (nonatomic,weak) UIImageView *wholeView;

//header frame
@property (nonatomic,weak) UIView *headerBaseBox;
@property (nonatomic,weak) UILabel *headerStatusLabel;
@property (nonatomic,weak) UILabel *headerTitleLabel;

//body frame
@property (nonatomic,weak) UIImageView *bodyBaseBox;
@property (nonatomic,weak) UIView *bodyBarLabel;
@property (nonatomic,weak) UILabel *bodyBarLabelFundrasingAmount;
@property (nonatomic,weak) UILabel *bodyBarLabelAchievementRate;
@property (nonatomic,weak) UILabel *bodyBarLabelDaysLeft;


//footer frame
@property (nonatomic,weak) UIView *footerBaseBox;
@property (nonatomic,weak) UILabel *footerCategoryBar;
@property (nonatomic,weak) UILabel *footerLocationBar;


@end

@implementation HomeWorkTableViewCell


-(void)layoutSubviews {
    
    [self updateLayout];
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self createSubViews];
        [self updateLayout];
        [self test];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)createSubViews
{
//##################whole View#################
//    
//    UIImageView *wholeView = [[UIImageView alloc] init];
//    wholeView.image = [UIImage imageNamed:@"fire.jpg"];
//    wholeView.clipsToBounds = YES;
//    [self.contentView addSubview:wholeView];
//    self.wholeView = wholeView;
//    
    
//  ###############header Frame####################
    UIView *headerBaseBox = [[UIView alloc] init];
    [self.contentView addSubview:headerBaseBox];
    self.headerBaseBox = headerBaseBox;
    
    //header status Label
    UILabel *headerStatusLabel = [[UILabel alloc] init];
    headerStatusLabel.textAlignment = NSTextAlignmentLeft;
    headerStatusLabel.textColor = [UIColor redColor];
    headerStatusLabel.font =  [UIFont systemFontOfSize:15];
    [headerBaseBox addSubview:headerStatusLabel];
    self.headerStatusLabel = headerStatusLabel;

    //header Title Label
    UILabel *headerTitleLabel = [[UILabel alloc] init];
    headerTitleLabel.text = @"GPD Pocket: 7.0' UMPC-Laptop 'Ubuntu or WIN 10 OS'";
    headerTitleLabel.textAlignment = NSTextAlignmentLeft;
    headerTitleLabel.numberOfLines = 2;
    [headerTitleLabel sizeToFit];
    headerTitleLabel.lineBreakMode = YES;
//    headerTitleLabel.font = [UIFont systemFontOfSize:21];
    headerTitleLabel.font = [UIFont boldSystemFontOfSize:18];
    headerTitleLabel.textColor = [UIColor blackColor];
    [headerBaseBox addSubview:headerTitleLabel];
    self.headerTitleLabel = headerTitleLabel;
    

//  ##################body Frame##################
    UIImageView *bodyBaseBox = [[UIImageView alloc] init];
    bodyBaseBox.clipsToBounds = YES;
    [self.contentView addSubview:bodyBaseBox];
    self.bodyBaseBox = bodyBaseBox;
    
    //body BAR Label
    UIView *bodyBarLabel = [[UIView alloc] init];
    bodyBarLabel.backgroundColor = [UIColor blackColor];
    bodyBarLabel.alpha = 0.5;
    [bodyBaseBox addSubview:bodyBarLabel];
    self.bodyBarLabel = bodyBarLabel;
    
    UILabel *bodyBarLabelFundrasingAmount = [[UILabel alloc] init];
    bodyBarLabelFundrasingAmount.text = @"$1,207,211 USD";
    bodyBarLabelFundrasingAmount.textColor = [UIColor whiteColor];
    bodyBarLabelFundrasingAmount.textAlignment = NSTextAlignmentLeft;
    bodyBarLabelFundrasingAmount.font = [UIFont systemFontOfSize:12];
    [bodyBarLabel addSubview:bodyBarLabelFundrasingAmount];
    self.bodyBarLabelFundrasingAmount = bodyBarLabelFundrasingAmount;
    
    UILabel *bodyBarLabelAchievementRate = [[UILabel alloc] init];
    bodyBarLabelAchievementRate.text = @"604% funded";
    bodyBarLabelAchievementRate.textColor = [UIColor whiteColor];
    bodyBarLabelAchievementRate.textAlignment = NSTextAlignmentCenter;
    bodyBarLabelAchievementRate.font = [UIFont systemFontOfSize:12];
    [bodyBarLabel addSubview:bodyBarLabelAchievementRate];
    self.bodyBarLabelAchievementRate = bodyBarLabelAchievementRate;
    
    UILabel *bodyBarLabelDaysLeft = [[UILabel alloc] init];
    bodyBarLabelDaysLeft.text = @"55 days left";
    bodyBarLabelDaysLeft.textColor = [UIColor whiteColor];
    bodyBarLabelDaysLeft.textAlignment = NSTextAlignmentRight;
    bodyBarLabelDaysLeft.font = [UIFont systemFontOfSize:12];
    [bodyBarLabel addSubview:bodyBarLabelDaysLeft];
    self.bodyBarLabelDaysLeft = bodyBarLabelDaysLeft;
    
    
    
//  ##################footer Frame##################
    //footer Frame
    UIView *footerBaseBox = [[UIView alloc] init];
    [self.contentView addSubview:footerBaseBox];
    self.footerBaseBox = footerBaseBox;
    
    //footer Label
    UILabel *footerCategoryBar = [[UILabel alloc] init];
    footerCategoryBar.font = [UIFont systemFontOfSize:12];
    [footerBaseBox addSubview:footerCategoryBar];
    self.footerCategoryBar = footerCategoryBar;
    
    UILabel *footerLocationBar = [[UILabel alloc]init];
    footerLocationBar.font = [UIFont systemFontOfSize:12];
    [footerBaseBox addSubview:footerLocationBar];
    self.footerLocationBar = footerLocationBar;
    
}

- (void)updateLayout
{

//    시작점 띄우기
//    const CGFloat MARGIN = 5;
    CGFloat offsetY = 5.0;
    
//    wholeview 크기
//    self.wholeView.frame = CGRectMake(0, MARGIN, self.frame.size.width, self.contentView.frame.size.height*20/100);
    
//    headerBaseBox 크기
    self.headerBaseBox.frame = CGRectMake(0, offsetY+5, self.frame.size.width, self.contentView.frame.size.height*20/100);
    
//    headerStatusLabel 크기
//    offsetY += MARGIN;
    self.headerStatusLabel.frame = CGRectMake(0, offsetY, self.frame.size.width, self.headerBaseBox.frame.size.height/3);
    
//    headerTitleLabel 크기
    offsetY += self.headerStatusLabel.frame.size.height;
    self.headerTitleLabel.frame = CGRectMake(0, offsetY, self.frame.size.width, self.headerBaseBox.frame.size.height*2/3);
    
    
//    bodyBaseBox 크기
    offsetY = 0;
    offsetY += self.headerBaseBox.frame.size.height;
    self.bodyBaseBox.frame = CGRectMake(0, offsetY, self.frame.size.width, self.contentView.frame.size.height*70/100);
    
//    bodyBarLabel 크기
    offsetY += (self.bodyBaseBox.frame.size.height - self.bodyBaseBox.frame.size.height*38/100);
    self.bodyBarLabel.frame = CGRectMake(0, offsetY, self.frame.size.width, self.bodyBaseBox.frame.size.height/10);
    
//    bodyBarLabelFundrasingAmount 길이
    self.bodyBarLabelFundrasingAmount.frame = CGRectMake(4, 0, self.bodyBarLabel.frame.size.width/3, self.bodyBarLabel.frame.size.height);
    
//    bodyBarLabelAchievementRate
    self.bodyBarLabelAchievementRate.frame = CGRectMake(self.bodyBarLabel.frame.size.width/3, 0, self.bodyBarLabel.frame.size.width/3, self.bodyBarLabel.frame.size.height);
    
//    bodyBarLabelDaysLeft
    self.bodyBarLabelDaysLeft.frame = CGRectMake(self.bodyBarLabel.frame.size.width*2/3-8, 0, self.bodyBarLabel.frame.size.width/3, self.bodyBarLabel.frame.size.height);
    
//    footerBaseBox 크기
    offsetY = 0;
    offsetY += self.headerBaseBox.frame.size.height+self.bodyBaseBox.frame.size.height;
    self.footerBaseBox.frame = CGRectMake(0, offsetY-5, self.frame.size.width, self.contentView.frame.size.height*10/100);
    
//    footerCategoryAndLocationBar
    self.footerCategoryBar.frame = CGRectMake(5, 0, self.footerBaseBox.frame.size.width/3, self.footerBaseBox.frame.size.height);
    
    self.footerLocationBar.frame = CGRectMake(self.footerBaseBox.frame.size.width/3-10, 0, self.footerBaseBox.frame.size.width, self.footerBaseBox.frame.size.height);

}

- (void) test
{
//    self.wholeView.backgroundColor = [UIColor whiteColor];
//    self.headerBaseBox.backgroundColor = [UIColor whiteColor];
//    self.bodyBarLabel.backgroundColor = [UIColor darkGrayColor];
//    self.footerBaseBox.backgroundColor = [UIColor whiteColor];
}

- (void)setDataWithIMGName:(NSString *)imgURLStr
              headerStatus:(NSString *)status
            footerCategory:(NSString *)category
            footerLocation:(NSString *)location
{
    self.bodyBaseBox.image = [UIImage imageNamed:imgURLStr];
    self.headerStatusLabel.text = status;
    self.footerCategoryBar.text = category;
    self.footerLocationBar.text = location;
}
@end
