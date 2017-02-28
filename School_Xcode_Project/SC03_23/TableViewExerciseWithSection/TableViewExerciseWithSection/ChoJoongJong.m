//
//  ChoJoongJong.m
//  TableViewExerciseWithSection
//
//  Created by SSangGA on 2017. 2. 15..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "ChoJoongJong.h"

@interface ChoJoongJong ()
<UITextFieldDelegate>
@property UITextField *inputText;
@property UILabel *resultText;
@end

@implementation ChoJoongJong

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.inputText = [[UITextField alloc]initWithFrame:CGRectMake(50, 50, 300, 30)];
    self.inputText.delegate = self;
    self.inputText.placeholder = @"한글을 입력하세요";
    self.inputText.borderStyle = UITextBorderStyleLine;
    self.inputText.textColor = [UIColor redColor];
    [self.view addSubview:self. inputText];
    
    //결과 레이블 만들기
    self.resultText = [[UILabel alloc]initWithFrame:CGRectMake(50, 100, 300, 30)];
    self.resultText.textColor = [UIColor blackColor];
    self.resultText.text = @"결과:";
    [self.view addSubview:self.resultText];
}

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
            result = [NSString stringWithFormat:@"%@%@%@%@", result, [cho objectAtIndex:choIdx], [jung objectAtIndex:jungIdx], [jong objectAtIndex:jongIdx]];
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
