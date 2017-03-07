//
//  ViewController.m
//  MorningExercise
//
//  Created by SSangGA on 2017. 3. 6..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "ViewController.h"  //파일
#import <MapKit/MapKit.h>  //프레임워크

@interface ViewController ()
<UITableViewDelegate,UITableViewDataSource>
@property UITableView *tv;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.tv = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    self.tv.delegate =self;
    [self.view addSubview:self.tv];
    
    UITextView *txtview = [[UITextView alloc] initWithFrame:CGRectMake(10, 20, self.view.frame.size.width*80/100, self.view.frame.size.height*50/100)];
    [txtview setFont:[UIFont systemFontOfSize:12]];
    txtview.textColor = [UIColor blueColor];
//    txtview.returnKeyType = UIReturnKeySend;
    txtview.keyboardType = UIKeyboardTypePhonePad;
    [self.tv addSubview:txtview];
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"default"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"default"];
        cell.textLabel.text = @"contents";
    }return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
