//
//  ViewController.m
//  UITableSelfStudy
//
//  Created by SSangGA on 2017. 2. 15..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

<UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource>
//@property UITextField *inputText;
//@property UILabel *resultText;
@property UITableView *tb;
@property NSArray *korean;
@property NSUInteger code;
@property NSArray *sectionCode;   //section 배열
@property NSDictionary *codeCho;
@property NSDictionary *codeJoong;
@property NSDictionary *codeJong;

@property UITextField* inputText;
@property UILabel* resultText;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
//    NSArray *temp1 = @[@"ㄱ"];
//    
//    NSDictionary *temp2 = [[NSDictionary alloc] initWithObjects:@[@"김길동"] forKeys:@"ㄱ"];
//    
//    for (NSString *temp in temp1) {
//        [temp2 objectForKey:[temp2 objectForKey:temp]]
//    }
    
    // Do any additional setup after loading the view.
    
    self.inputText = [[UITextField alloc]initWithFrame:CGRectMake(50, 50, 300, 30)];
    self.inputText.delegate = self;
    self.inputText.placeholder = @"한글을 입력하세요";
    self.inputText.borderStyle = UITextBorderStyleLine;
    self.inputText.textColor = [UIColor redColor];
    [self.view addSubview:self. inputText];
    
//    결과 레이블 만들기
    self.resultText = [[UILabel alloc]initWithFrame:CGRectMake(50, 100, 300, 30)];
    self.resultText.textColor = [UIColor blackColor];
    self.resultText.text = @"결과:";
    [self.view addSubview:self.resultText];

//  Array데이터 입력
    self.korean = @[@"여상민",@"박종찬",@"홍정기",@"김윤서"];
    self.codeCho = @{@"ㄱ":@01,@"ㄲ":@01};
    self.sectionCode = @[@"ㄱ",@"ㄴ",@"ㄷ",@"ㄹ",@"ㅁ",@"ㅂ",@"ㅅ",@"ㅇ",@"ㅈ",@"ㅊ",@"ㅋ",@"ㅌ",@"ㅍ",@"ㅎ"];
    
//  테이블뷰 만들기
    self.tb = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    self.
    self.tb.delegate = self;
    self.tb.dataSource = self;
    
    
    [self.view addSubview:self.tb];
}

//  Row별 tablecell만들기
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    return cell;
}




// 섹션별 row수; 정하기 : 입력값 별 섹션 규정 -> 섹션별 인덱스 카운트 ->
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 0;
}
//
//-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
//{
//    
//}
//-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
//{
//    
//}

- (NSString *)linearHangul:(NSString *)str {
    NSArray *cho = [[NSArray alloc] initWithObjects:@"ㄱ",@"ㄲ",@"ㄴ",@"ㄷ",@"ㄸ",@"ㄹ",@"ㅁ",@"ㅂ",@"ㅃ",@"ㅅ",@"ㅆ",@"ㅇ",@"ㅈ",@"ㅉ",@"ㅊ",@"ㅋ",@"ㅌ",@"ㅍ",@"ㅎ",nil];
    NSArray *jung = [[NSArray alloc] initWithObjects:@"ㅏ",@"ㅐ",@"ㅑ",@"ㅒ",@"ㅓ",@"ㅔ",@"ㅕ",@"ㅖ",@"ㅗ",@"ㅘ",@"ㅙ",@"ㅚ",@"ㅛ",@"ㅜ",@"ㅝ",@"ㅞ",@"ㅟ",@"ㅠ",@"ㅡ",@"ㅢ",@"ㅣ",nil];
    NSArray *jong = [[NSArray alloc] initWithObjects:@"",@"ㄱ",@"ㄲ",@"ㄳ",@"ㄴ",@"ㄵ",@"ㄶ",@"ㄷ",@"ㄹ",@"ㄺ",@"ㄻ",@"ㄼ",@"ㄽ",@"ㄾ",@"ㄿ",@"ㅀ",@"ㅁ",@"ㅂ",@"ㅄ",@"ㅅ",@"ㅆ",@"ㅇ",@"ㅈ",@"ㅊ",@"ㅋ",@" ㅌ",@"ㅍ",@"ㅎ",nil];
    NSString *result = @"";
    for (int i=0;i<[str length];i++) {
        NSInteger code = [str characterAtIndex:i] - 44032;
        if (code > -1 && code < 11172) {
            NSInteger choIdx = code / 21 / 28;
            NSInteger jungIdx = code % (21 * 28) / 28;
            NSInteger jongIdx = code % 28;
            result = [NSString stringWithFormat:@"%@%@%@%@", result, [cho objectAtIndex:choIdx],[jung objectAtIndex:jungIdx],[jong objectAtIndex:jongIdx]];
        }
    }
    return result;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    self.resultText.text = [NSString stringWithFormat:@"결과:%@",[self linearHangul:textField.text]];
    
    [self.inputText resignFirstResponder];
    return YES;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
