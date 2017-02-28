//
//  ViewController.m
//  HomeWorkNaviTable
//
//  Created by SSangGA on 2017. 2. 23..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "ViewController.h"
#import "DataCenter.h"

@interface ViewController()
<UITableViewDelegate, UITableViewDataSource>

//@property NSArray *sections;
//@property NSArray *iconsAtNetwork;
//@property NSArray *secPerRows;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //    데이터 array
//    self.sections = @[@"Network",@"ControllSet", @"DeviceControl",@"Account",@"Communications", @"Multimedia",@"SNS",@"Develper"];
//    self.secPerRows = @[@{@"row":@[@"에어플레인 모드", @"Wi-Fi", @"Bluetooth", @"셀룰러", @"개인용 핫스팟", @"네트워크 사업자"]},
//                        @{@"row":@[@"일반", @"디스플레이 및 밝기", @"배경화면", @"사운드", @" Siri", @"Touch ID 및 암호", @"배터리", @"개인 정보 보호"]},
//                        @{@"row":@[@"알림", @"제어 센터",@"방해금지 모드"]},
//                        @{@"row":@[@"iCloud", @"iTunes 및 App Store"]},
//                        @{@"row":@[@"Mail", @"연락처", @"캘린더", @"메모", @"미리알림", @"전화", @"메시지", @"FaceTime", @"지도", @"나침반", @"Safari"]},
//                        @{@"row":@[@"음악", @"비디오", @"사진 및 카메라", @"Podcast", @"iTunes U", @"Game Center"]},
//                        @{@"row":@[@"트위터", @"Facebook", @"Flickr", @"Vimeo"]},
//                        @{@"row":@[@"개발자"]}];
//    self.iconsAtNetwork = @[@"airplane",@"wifi",@"bluetooth",@"cellurer",@"hotspot", @"isp"];
    
    self.navigationItem.title = @"Settings";
    [self.navigationController.navigationBar setBarStyle:UIBarStyleDefault];
    
    //    테이블뷰 생성
    UITableView *tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStyleGrouped];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
}

//    section갯수
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [[DataCenter sharedInstance] numberOfSections];
}

//    row갯수
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return [[DataCenter sharedInstance] numberOfRows:section];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [[DataCenter sharedInstance] sectionTitle:section];
}



//    기본 UITableViewCell
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0 && indexPath.row == 0) {
        UITableViewCell *sec0 = [tableView dequeueReusableCellWithIdentifier:@"section0"];
        if (sec0 == nil) {
            sec0 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"section0"];
            sec0.textLabel.text = [[DataCenter sharedInstance] titleOfRows:indexPath.section rows:indexPath.row];
//            sec0.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            UISwitch *switchPerRow = [[UISwitch alloc] initWithFrame:CGRectZero];
            sec0.accessoryView = switchPerRow;
            [switchPerRow setOn:NO animated:YES];
            sec0.selectionStyle = UITableViewCellSelectionStyleNone;
            
            [switchPerRow addTarget:self action:@selector(swOn:) forControlEvents:UIControlEventValueChanged];
            
        } return sec0;
    } else {
        UITableViewCell *tb1 = [tableView dequeueReusableCellWithIdentifier:@"defaultCell"];
        if (tb1 == nil) {
            tb1 = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"defaultCell"];
            tb1.textLabel.text = [[DataCenter sharedInstance] titleOfRows:indexPath.section rows:indexPath.row];
            
            tb1.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            tb1.imageView.image = [UIImage imageNamed:[[DataCenter sharedInstance] iconOfRows:indexPath.section rows:indexPath.row]];
        } return tb1;
    }
}

- (void)swOn:(UISwitch *)sender;
{
    NSLog(@"스위치가 켜졌습니다");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
