//
//  ViewController.m
//  UITableViewClassContents
//
//  Created by SSangGA on 2017. 2. 16..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITableViewDelegate, UITableViewDataSource>
@property UITableView *tb;
@property NSArray *mammaliaList;
@property NSArray *mammaliaImageSet;

@property NSArray *sauropsidList;
@property NSArray *amphibianList;
@property NSArray *piscesList;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    self.list = @[@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"11",@"12",@"13",@"14",@"15",@"16",@"17"];
    self.mammaliaList = @[@"개",@"고양이",@"사자",@"호랑이",@"코끼리",@"코뿔소",@"하마",@"고래",@"바다표범",@"물개",@"소",@"말",@"기린",@"영양"];
    
    
    self.mammaliaImageSet = @[@{@"name":@"개",@"imgURL":@"dog.jpeg"},@{@"name":@"코끼리",@"imgURL":@"elephant.jpeg"},@{@"name":@"말",@"imgURL":@"horse.jpeg"},@{@"name":@"사자",@"imgURL":@"lion.jpg"},@{@"name":@"코뿔소",@"imgURL":@"Rhinoceros.jpeg"},@{@"name":@"호랑이",@"imgURL":@"tiger.jpeg"},@{@"name":@"소",@"imgURL":@"cow.jpeg"}];
    self.sauropsidList = @[@"뱀",@"도마뱀",@"악어",@"이구아나",@"드래곤",@"거북이",@"카멜레온"];
    self.amphibianList = @[@"개구리",@"도롱뇽",@"두꺼비",@"청개구리"];
    self.piscesList = @[@"광어",@"도다리",@"도미",@"방어",@"x고등어",@"꽁치",@"상어"];
    
    UITableView *tv = [[UITableView alloc]initWithFrame:CGRectMake(0, self.view.frame.size.height*5/100, self.view.frame.size.width, self.view.frame.size.height-self.view.frame.size.height*5/100) style:UITableViewStylePlain];
    tv.delegate = self;
    tv.dataSource = self;
    [self.view addSubview:tv];
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.mammaliaImageSet.count;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    switch (section) {
        case 0:
            return @"포유류";
            break;
        case 1:
            return @"파충류";
            break;
        case 2:
            return @"양서류";
             break;
        case 3:
            return @"어류";
             break;
        default:
            return 0;
            break;
    }
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    switch (section) {
        case 0:
            return self.mammaliaImageSet.count;
            break;
        case 1:
            return self.sauropsidList.count;
            break;
        case 2:
            return self.amphibianList.count;
            break;
        case 3:
            return self.piscesList.count;
      default:
            return 1;
            break;
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *tvc = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (tvc == nil) {
        tvc = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    tvc.textLabel.text = [[self.mammaliaImageSet objectAtIndex:indexPath.row] objectForKey:@"name"];
    NSString *imgName = [[self.mammaliaImageSet objectAtIndex:indexPath.row] objectForKey:@"imgURL"];
    tvc.imageView.image = [UIImage imageNamed:imgName];
    tvc.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
    
    
    return tvc;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    UITableViewCell *selCell = [tableView cellForRowAtIndexPath:indexPath];
    NSLog(@"selected Row %@",selCell.textLabel.text);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
