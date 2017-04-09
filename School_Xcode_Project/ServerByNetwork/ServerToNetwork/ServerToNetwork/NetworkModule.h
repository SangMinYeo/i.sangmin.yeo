//
//  NetworkModule.h
//  ServerToNetwork
//
//  Created by SSangGA on 2017. 3. 19..
//  Copyright © 2017년 ysm. All rights reserved.
//

#import <Foundation/Foundation.h>
@class DataCenter;


@interface NetworkModule : NSObject


typedef void(^CompletionBlock)(BOOL sucess,NSDictionary *data);

#define SITE_URL(url) @"https://fc-ios.lhy.kr/api" url

#define LOGIN_URL           SITE_URL("/member/login")
#define SIGNUP_URL          SITE_URL("/member/signup")

#define LOGOUT_URL         SITE_URL("/member/logout")
#define PROFILE_URL        SITE_URL("/member/profile")
#define CREATE_POST_URL    SITE_URL("/post")
#define GET_POST_URL       SITE_URL("/post")

- (void)sendLoginInformationToNWMdl:(NSString *)username Password:(NSString *)password;
- (void)requestLogInToServer:(CompletionBlock)completion;

@end
