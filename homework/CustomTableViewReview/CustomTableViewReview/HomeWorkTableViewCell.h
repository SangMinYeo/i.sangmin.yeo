//
//  HomeWorkTableViewCell.h
//  CustomTableViewReview
//
//  Created by SSangGA on 2017. 2. 19..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeWorkTableViewCell : UITableViewCell




- (void)setDataWithIMGName:(NSString *)imgURLStr
              headerStatus:(NSString *)status
            footerCategory:(NSString *)category
            footerLocation:(NSString *)location;

@end
