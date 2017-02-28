//
//  MyCustomView.h
//  CustomViewClassContents
//
//  Created by SSangGA on 2017. 2. 17..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCustomView : UIView

- (instancetype)initWithFrame:(CGRect)frame;

- (void)setDataWithIMGName:(NSString *)imgUrlStr
                      name:(NSString *)nameStr
                       msg:(NSString *)msgStr;
@end
