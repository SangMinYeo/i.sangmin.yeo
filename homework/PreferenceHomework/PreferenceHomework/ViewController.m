//
//  ViewController.m
//  PreferenceHomework
//
//  Created by SSangGA on 2017. 2. 21..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "ViewController.h"


@interface ViewController()
<UITableViewDelegate, UITableViewDataSource>

@property NSArray *sections;
@property NSArray *secPerRows;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    데이터 array
    self.sections = @[@"Network",@"ControllSet", @"DeviceControl",@"Account",@"Communications", @"Multimedia",@"SNS",@"Develper"];
    self.secPerRows = @[@[@"에어플레인 모드", @"Wi-Fi", @"Bluetooth", @"셀룰러", @"개인용 핫스팟", @"네트워크 사업자"],
                        @[@"일반", @"디스플레이 및 밝기", @"배경화면", @"사운드", @" Siri", @"Touch ID 및 암호", @"배터리", @"개인 정보 보호"],
                        @[@"알림", @"제어 센터", @"방해금지 모드"],
                        @[@"iCloud", @"iTunes 및 App Store"],
                        @[@"Mail", @"연락처", @"캘린더", @"메모", @"미리알림", @"전화", @"메시지", @"FaceTime", @"지도", @"나침반", @"Safari"],
                        @[@"음악", @"비디오", @"사진 및 카메라", @"Podcast", @"iTunes U", @"Game Center"],
                        @[@"트위터", @"Facebook", @"Flickr", @"Vimeo"],
                        @"개발자"];
                        
    
//    테이블뷰 생성
    UITableView *tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height-20) style:UITableViewStyleGrouped];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
}

//    row갯수
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSArray *temp = [self.secPerRows objectAtIndex:section];
    NSInteger tempNum = temp.count;
    return tempNum;
}

//- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
//{
//    NSString *temp = [[self.sections objectAtIndex:section] objectForKey:@"section"];
//    return temp;
//}

//    section갯수
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.sections.count;
    
}

//    기본 UITableViewCell
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *tb1 = [tableView dequeueReusableCellWithIdentifier:@"defaultCell"];
    if (tb1 == nil) {
        tb1 = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"defaultCell"];
        tb1.textLabel.text = [[self.secPerRows objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
        tb1.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
//        tb1.imageView.image = [[UIImage imageNamed:[self.sections objectAtIndex:indexPath.section] objectForKey:@"icon"] objectAtIndex:indexPath.row];
    }
    return tb1;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
