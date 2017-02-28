//
//  ViewController.m
//  TableViewExerciseWithSection
//
//  Created by SSangGA on 2017. 2. 15..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITableViewDelegate,UITableViewDataSource>
@property UITableView *tb;
@property NSArray *list;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.list = @[@"a",@"b",@"c",@"d",@"e",@"f"];
    self.tb = [[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
    
    self.tb.delegate = self;
    self.tb.dataSource = self;
    
    [self.view addSubview:self.tb];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.list.count;
}



-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *defaultCell = [tableView dequeueReusableCellWithIdentifier:@"defaultCell"];
    if (defaultCell == nil) {
    defaultCell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"defaultCell"];
    }
    defaultCell.textLabel.text = [self.list objectAtIndex:indexPath.row];
    return defaultCell;
}


-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    switch (section) {
        case 0:
            return @"Section1";
            break;
        case 1:
            return @"Section2";
            break;
        default:
            return @"";
            break;
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
