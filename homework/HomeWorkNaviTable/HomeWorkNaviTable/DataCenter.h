//
//  DataCenter.h
//  HomeWorkNaviTable
//
//  Created by SSangGA on 2017. 2. 23..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataCenter : NSObject

+ (instancetype)sharedInstance;

+ (NSUserDefaults *)standardUserDefaults;

- (void)setObject:(id)value forKey:(NSString *)defaultName;

- (id)objectForKey:(NSString *)defaultName;

- (NSInteger)numberOfSections;

- (NSInteger)numberOfRows:(NSInteger)section;

- (NSString *)titleOfRows:(NSInteger)section rows:(NSInteger)row;

- (NSString *)iconOfRows:(NSInteger)section rows:(NSInteger)row;

- (NSString *)sectionTitle:(NSInteger)section;

- (void)setSectionAndRow;


@end
