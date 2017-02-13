//
//  MyView.h
//  ViewTest
//
//  Created by youngmin joo on 2017. 2. 6..
//  Copyright © 2017년 WingsCompany. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MyViewDelegate;

@interface MyView : UIView

@property (weak) id<MyViewDelegate> delegate;

@end

@protocol MyViewDelegate <NSObject>

- (void)didSelectedBtn:(UIButton *)btn;

@end
