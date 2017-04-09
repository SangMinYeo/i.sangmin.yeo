//
//  NetworkModuleViewController.h
//  ClassContetns_network
//
//  Created by SSangGA on 2017. 3. 17..
//  Copyright © 2017년 ysm. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetworkModuleViewController : NSObject

typedef void(^CompletionBlock)(BOOL sucess,NSDictionary *data);
typedef NSString *(^VCBlock)(void);
#define SITE_URL(url) @"https://fc-ios.lhy.kr/api" url

#define LOGIN_URL           SITE_URL("/member/login")
#define SIGNUP_URL          SITE_URL("/member/signup")

#define LOGOUT_URL         SITE_URL("/member/logout")
#define PROFILE_URL        SITE_URL("/member/profile")
#define CREATE_POST_URL    SITE_URL("/post")
#define GET_POST_URL       SITE_URL("/post")


@property (nonatomic) NSInteger accountCount;
- (void)passAccountToNWmodule:(VCBlock)ID password:(VCBlock)PW;
- (void)signUp:(CompletionBlock)completion;
- (void)logIn:(CompletionBlock)completion;
- (void)logOut:(CompletionBlock)completion;

- (void)logInWithUserName:(NSString *)userName
                 password:(NSString *)password
               completion:(CompletionBlock)completion;

@end
