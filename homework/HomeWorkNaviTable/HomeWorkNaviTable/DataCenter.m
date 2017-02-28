//
//  DataCenter.m
//  HomeWorkNaviTable
//
//  Created by SSangGA on 2017. 2. 23..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "DataCenter.h"

@interface DataCenter ()
@property NSArray *sections;
@property NSArray *secPerRows;
@property NSArray *iconsAtNetwork;

@end

@implementation DataCenter


+ (instancetype)sharedInstance
{
    static DataCenter *datacenter = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        datacenter = [[self alloc] init];
    });
    
    return datacenter;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setSectionAndRow];
    }
    return self;
}


////
////- (void)setObject:(id)value forKey:(NSString *)defaultName
////{
////
////}
////
////- (id)objectForKey:(NSString *)defaultName
////{
////
//}


//섹션갯수
- (NSInteger)numberOfSections
{
    return self.sections.count;
}

//섹션타이틀
- (NSString *)sectionTitle:(NSInteger)section
{
    return [self.sections objectAtIndex:section];
}

//row갯수
- (NSInteger)numberOfRows:(NSInteger)section
{
    return ((NSArray *)[[self.secPerRows objectAtIndex:section] objectForKey:@"row"]).count;
}

//row Title
- (NSString *)titleOfRows:(NSInteger)section rows:(NSInteger)row
{
    return [[[self.secPerRows objectAtIndex:section] objectForKey:@"row"] objectAtIndex:row];
}

//row image
- (NSString *)iconOfRows:(NSInteger)section rows:(NSInteger)row

{
    return [[[self.secPerRows objectAtIndex:section] objectForKey:@"row"]objectAtIndex:row];
}

- (void)setSectionAndRow
{
    self.sections = @[@"Network",@"ControllSet", @"DeviceControl",@"Account",@"Communications", @"Multimedia",@"SNS",@"Develper"];
    self.secPerRows = @[@{@"row":@[@"에어플레인 모드", @"Wi-Fi", @"Bluetooth", @"셀룰러", @"개인용 핫스팟", @"네트워크 사업자"]},
                        @{@"row":@[@"일반", @"디스플레이 및 밝기", @"배경화면", @"사운드", @" Siri", @"Touch ID 및 암호", @"배터리", @"개인 정보 보호"]},
                        @{@"row":@[@"알림", @"제어 센터",@"방해금지 모드"]},
                        @{@"row":@[@"iCloud", @"iTunes 및 App Store"]},
                        @{@"row":@[@"Mail", @"연락처", @"캘린더", @"메모", @"미리알림", @"전화", @"메시지", @"FaceTime", @"지도", @"나침반", @"Safari"]},
                        @{@"row":@[@"음악", @"비디오", @"사진 및 카메라", @"Podcast", @"iTunes U", @"Game Center"]},
                        @{@"row":@[@"트위터", @"Facebook", @"Flickr", @"Vimeo"]},
                        @{@"row":@[@"개발자"]}];
    self.iconsAtNetwork = @[@"airplane",@"wifi",@"bluetooth",@"cellurer",@"hotspot", @"isp"];
    
}



@end
