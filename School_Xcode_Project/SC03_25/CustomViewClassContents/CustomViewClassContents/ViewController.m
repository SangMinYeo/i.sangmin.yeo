//
//  ViewController.m
//  CustomViewClassContents
//
//  Created by SSangGA on 2017. 2. 17..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "ViewController.h"
#import "MyCustomView.h"
#import "MyCustomTableViewCell.h"

@interface ViewController ()
<UITableViewDelegate, UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    
//    MyCustomView *customView = [[MyCustomView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 250)];
//    [customView setDataWithIMGName:@"KakaoTalk_Photo_2017-02-16-16-57-53.jpeg" name:@"yeo" msg:@"커스텀 메세지 좋다"];
//    [self.view addSubview:customView];
    
    UITableView *tv = [[UITableView alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height)];
    tv.delegate = self;
    tv.dataSource = self;
    [self.view addSubview:tv];


}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return 10;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MyCustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[MyCustomTableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
    }
    
    [cell setDataWithIMGName:@"KakaoTalk_Photo_2017-02-16-16-57-53.jpeg" name:@"Yeo" msg:[NSString stringWithFormat:@"%ld",indexPath.row]];
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 200;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
