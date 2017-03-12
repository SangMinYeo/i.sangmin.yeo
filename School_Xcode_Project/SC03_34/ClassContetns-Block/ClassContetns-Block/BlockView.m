//
//  BlockView.m
//  ClassContetns-Block
//
//  Created by SSangGA on 2017. 3. 10..
//  Copyright © 2017년 ysm. All rights reserved.
//

#import "BlockView.h"


@interface BlockView ()
@property Myblock logging;

@end

@implementation BlockView


//- (Myblock)callBlock
//{
//    Myblock a = ^{
//        NSString *temp = @"버튼이 눌러짐";
//        NSLog(@"%@",temp);
//        return temp;
//    };
//    return a;
//}

- (IBAction)onTouchButton:(UIButton *)sender {
    
    self.textLabel.text = self.logging();
}

- (void)passBlock:(Myblock)completion {
    
    self.logging = completion;
}


@end
