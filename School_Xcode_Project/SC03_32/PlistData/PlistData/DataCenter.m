//
//  DataCenter.m
//  PlistData
//
//  Created by SSangGA on 2017. 3. 3..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "DataCenter.h"

@interface DataCenter()

@property NSArray *friendList;

@end
@implementation DataCenter

//   파일불러오기
- (NSArray *)callOfData
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    NSLog(@"%@", paths);
    
    NSString *basePath = [paths objectAtIndex:0];
    NSString *docuPath = [basePath stringByAppendingPathComponent:@"sample.plist"];
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if (![fileManager fileExistsAtPath:docuPath]) {
        NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"sample" ofType:@"plist"];
        [fileManager copyItemAtPath:bundlePath toPath:docuPath error:nil];
    }
    NSArray *arr = [NSArray arrayWithContentsOfFile:docuPath];
    return arr;
}

//  데이터 변경
//- (NSMutableArray *)changeData
//{
//    NSMutableDictionary *temp = (NSMutableDictionary *)[[DataCenter defaultData]callOfData];
//    [temp setObject:[], forKey:@"name"]
//}



//  어레이에서 딕셔너리 추출 후 인덱스별 키:이름 값 반환
- (NSString *)cellForTitle:(NSInteger)index
{
    NSDictionary *temp = [self.friendList objectAtIndex:index];
    return [temp objectForKey:@"이름"];
}

//    friendlist 어레이의 인덱스 수
- (NSInteger)numberOfRow:(NSInteger)index
{
    return self.friendList.count;
}

//    싱글턴 객체 선언
+ (instancetype)defaultData
{
    static DataCenter *dataCenter = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dataCenter = [[DataCenter alloc] init];
        
    });
    
    return dataCenter;
}
//    초기화 override setFriendListData첨부
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setFriendListData];
    }
    return self;
}

//  프렌드리스트 데이터 어레이 작성 - plist에서 가져옴
- (void)setFriendListData
{
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"sample" ofType:@"plist"];
    self.friendList = [NSArray arrayWithContentsOfFile:filePath];
//    NSLog(@"list %@",self.friendList);
}


@end
