//
//  SecondViewController.h
//  AutoLayOut
//
//  Created by SSangGA on 2017. 2. 27..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;

@end
