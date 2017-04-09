//
//  ViewController.h
//  ClassContetns_network
//
//  Created by SSangGA on 2017. 3. 15..
//  Copyright © 2017년 ysm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
//typedef void(^Completion)(BOOL sucess,NSDictionary *data);
typedef NSString *(^NWmodule)(void);



//-(NSString *)sendTextFieldTextToNetworkModuleVC:(NWmodule)completion;

@end

