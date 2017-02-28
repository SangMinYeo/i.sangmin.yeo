//
//  ViewController.m
//  CustomTableViewReview
//
//  Created by SSangGA on 2017. 2. 19..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "ViewController.h"
#import "HomeWorkTableViewCell.h"

@interface ViewController ()
<UITableViewDataSource, UITableViewDelegate>

@property NSArray *status;
@property NSArray *category;
@property NSArray *location;
@property UIImageView *backImg;
@property UILabel *wholeTitle;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.status = @[@"Popular in Technology",@"Trending now",@"Sailed past their goal",@"Closing in on their goal",@"In the final stretch",@"From your own bacyard",@"Off to a great start"];
    self.category = @[@"Technology", @"Gaming", @"Design", @"Film", @"Comunity", @"Music", @"Education", @"Health"];
    self.location = @[@"SHENZHEN", @"STOCKHOLM", @"DUSSELDORF", @"NEWYORK", @"COPENHAGEN", @"HONGKONG", @"SAN FRANCISCO", @"GRAND RAPIDS"];
    
    self.backImg = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"fire.jpg"]];
    self.backImg.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    self.backImg.contentMode = UIViewContentModeScaleToFill;
    self.backImg.backgroundColor = [UIColor blackColor];
    [self.view addSubview:self.backImg];
    
    self.wholeTitle = [[UILabel alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2-150, 50, 300, 30)];
    self.wholeTitle.text = @"INDIEGOGO";
    self.wholeTitle.textColor = [UIColor whiteColor];
    self.wholeTitle.font = [UIFont boldSystemFontOfSize:33];
    self.wholeTitle.textAlignment = NSTextAlignmentCenter;
    [self.backImg addSubview:self.wholeTitle];
    
    
    UITableView *tv = [[UITableView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height*20/100, self.view.frame.size.width, self.view.frame.size.height*80/100) style: UITableViewStylePlain];
    tv.delegate = self;
    tv.dataSource = self;
    [self.view addSubview:tv];
    
    
    
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return 7;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    HomeWorkTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[HomeWorkTableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
    }
    
    [cell setDataWithIMGName:@"body1" headerStatus:[self.status objectAtIndex:indexPath.row] footerCategory:[self.category objectAtIndex:indexPath.row] footerLocation:[self.location objectAtIndex:indexPath.row]];
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return self.view.frame.size.height*80/100;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
