//
//  MainViewController.m
//  ClassContetns_network
//
//  Created by SSangGA on 2017. 3. 15..
//  Copyright © 2017년 ysm. All rights reserved.
//

#import "MainViewController.h"
#import "DataCenter.h"

@interface MainViewController ()
<UITableViewDelegate,UITableViewDataSource>

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UITableView *tb = [[UITableView alloc]initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStyleGrouped];
    tb.delegate = self;
    tb.dataSource = self;
    [self.view addSubview:tb];
}

//셀 for Row
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    UIImage *cellImg= [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pbs.twimg.com/media/C2G2NCTUoAIa9EO.jpg"]]];
    cell.textLabel.text = @"사진";
    cell.imageView.image = cellImg;
    cell.selectionStyle = UITableViewCellSelectionStyleBlue;
    return cell;
}

//섹션 갯수
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
