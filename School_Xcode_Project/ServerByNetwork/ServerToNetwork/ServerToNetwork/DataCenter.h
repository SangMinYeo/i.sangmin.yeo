//
//  DataCenter.h
//  ServerToNetwork
//
//  Created by SSangGA on 2017. 3. 19..
//  Copyright © 2017년 ysm. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataCenter : NSObject
typedef void (^Completion) (BOOL sucess,NSData *data);
@property NSUInteger accountCount;
+ (instancetype)singleton;

- (NSArray *)loadAccountListForTheFirstTime;
- (void)addAccount:(NSString *)username Password:(NSString *)password;
- (NSArray *)loadAccountList;
- (void)logInActionFromDC:(NSString *)username Password:(NSString *)password;
@end
