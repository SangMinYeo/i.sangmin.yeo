//
//  DataCenter.m
//  ServerToNetwork
//
//  Created by SSangGA on 2017. 3. 19..
//  Copyright © 2017년 ysm. All rights reserved.
//

#import "DataCenter.h"
#import "NetworkModule.h"

@interface DataCenter ()


@end
@implementation DataCenter

+ (instancetype)singleton
{
    static DataCenter *center;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        center = [[DataCenter alloc] init];
    });
    
    return center;
}

- (NSArray *)loadAccountListForTheFirstTime
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"accountList" ofType:@"plist"];
    NSArray *accountList = [NSArray arrayWithContentsOfFile:path];
    return accountList;
}

- (void)addAccount:(NSString *)username Password:(NSString *)password
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    //Documants directory base
    NSString *basePath = [paths objectAtIndex:0];
    //file path
    NSString *docuPath = [basePath stringByAppendingPathComponent:@"accountList.plist"];
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if (![fileManager fileExistsAtPath:docuPath])
    {
        NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"accountList" ofType:@"plist"];
        [fileManager copyItemAtPath:bundlePath toPath:docuPath error:nil];
    }
    
    NSMutableArray *accountList = [NSMutableArray arrayWithContentsOfFile:docuPath];
    
    NSDictionary *dic = @{@"username":username,@"password":password};
    
    [accountList addObject:dic];
    //저장
    [accountList writeToFile:docuPath atomically:NO];
    
    self.accountCount++;
}

- (NSArray *)loadAccountList
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    //Documants directory base
    NSString *basePath = [paths objectAtIndex:0];
    //file path
    NSString *docuPath = [basePath stringByAppendingPathComponent:@"accountList.plist"];
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if (![fileManager fileExistsAtPath:docuPath])
    {
        NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"accountList" ofType:@"plist"];
        [fileManager copyItemAtPath:bundlePath toPath:docuPath error:nil];
    }
    
    NSMutableArray *accountList = [NSMutableArray arrayWithContentsOfFile:docuPath];
    
    self.accountCount =  accountList.count;
    
    return accountList;
}

- (void)logInActionFromDC:(NSString *)username Password:(NSString *)password completion:(Completion)completion
{
    NetworkModule *NWMdlObject = [[NetworkModule alloc] init];
    [NWMdlObject sendLoginInformationToNWMdl:username Password:password];
//    [NWMdlObject requestLogInToServer:^(BOOL sucess,NSDictionary *dic){
//        if (sucess == YES) {
//            NSArray *temparr = [self loadAccountList];
//            [temparr objectAtIndex:[i]]
//            NSMutableArray *tempdic = [NSMutableArray arrayWithContentsOfFile:@"accountList.plist"];
//            [tempdic addObject:<#(nonnull id)#>
//            NSLog(@"key=%@",[dic objectForKey:@"key"]);
//            [dic writeToFile:@"accountList.plist" atomically:NO];
//        } else {
//            NSLog(@"error=%@",[dic objectForKey:@"non_field_errors"]);
//        }
//    }];
    NSLog(@"ID:%@,PW:%@",username,password);
}


@end
