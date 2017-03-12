//
//  BlockView.h
//  ClassContetns-Block
//
//  Created by SSangGA on 2017. 3. 10..
//  Copyright © 2017년 ysm. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NSString *(^Myblock)(void);

@interface BlockView : UIView

@property IBOutlet UILabel *textLabel;
@property IBOutlet UIButton *btn;

//- (Myblock)callBlock;

- (void)passBlock:(Myblock)completion;

@end
