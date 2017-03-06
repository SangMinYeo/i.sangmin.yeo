//
//  ViewController.m
//  PlistData
//
//  Created by SSangGA on 2017. 3. 3..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "ViewController.h"
#import "DataCenter.h"

@interface ViewController ()
<UITableViewDelegate, UITableViewDataSource>
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    

    
//    NSString *imgPath = [[NSBundle mainBundle] pathForResource:@"cardx" ofType:@"png"];
//    UIImage *img = [UIImage imageWithContentsOfFile:imgPath];
////    UIImage *img2 = [UIImage imageNamed:@"cards@2x.png"]; //contentsoffile을 써서 이미지를 불러오던 옛방법
//    UIImage *img2 = [UIImage imageNamed:@"back"]; //요즘 Asset을 써서 이미지를 불러오는 방법
    
    UITableView *tb = [[UITableView alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    tb.delegate = self;
    tb.dataSource = self;
    [self.view addSubview:tb];
    
}


/**
 cellForRowAtIndexPath delegate 함수

 @param tableView Fix할 TableView
 @param indexPath TableView에서 생성할 Row의 Cell의 NSIndexPath타입의 Section및 Row경로
 @return 생성된 UITableViewCell객체를 반환
 */
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *tbc = [tableView dequeueReusableCellWithIdentifier:@"cell"]; //tableViewCell재사용 정의
    if (tbc == nil) {                   //재사용할 Cell이 없을 때
        tbc = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];  //UITableViewCell객체 생성 및 Style정의
    }

    NSString *temp = [[DataCenter defaultData]cellForTitle:indexPath.row];
    tbc.textLabel.text = temp;
    return tbc;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[DataCenter defaultData]numberOfRow:section];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
