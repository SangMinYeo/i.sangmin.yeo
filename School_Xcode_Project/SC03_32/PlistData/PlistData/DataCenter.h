//
//  DataCenter.h
//  PlistData
//
//  Created by SSangGA on 2017. 3. 3..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface DataCenter : NSObject


- (NSDictionary *)callOfData;
- (NSString *)cellForTitle:(NSInteger)index;
- (NSInteger)numberOfRow:(NSInteger)index;
+ (instancetype)defaultData;
- (instancetype)init;
- (void)setFriendListData;

@end
