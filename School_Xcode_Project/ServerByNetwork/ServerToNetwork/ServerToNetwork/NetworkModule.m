//
//  NetworkModule.m
//  ServerToNetwork
//
//  Created by SSangGA on 2017. 3. 19..
//  Copyright © 2017년 ysm. All rights reserved.
//

#import "NetworkModule.h"

@interface NetworkModule ()
@property NSString *username;
@property NSString *password;

@end


@implementation NetworkModule



- (void)sendLoginInformationToNWMdl:(NSString *)username Password:(NSString *)password
{
    self.username = username;
    self.password = password;
    NSLog(@"%@,%@",username,password);
}

- (void)requestLogInToServer:(CompletionBlock)completion
{
    //session객체 생성
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    // login retquest객체 생성
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%@",LOGIN_URL]];  //URL 담은 url 변수 생성
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];    //url주소로 request 변수 생성
    
    NSString *noteDataString = [NSString stringWithFormat:@"username=%@&password=%@",self.username, self.password];
    
    request.HTTPBody = [noteDataString dataUsingEncoding:NSUTF8StringEncoding];
    request.HTTPMethod = @"POST";
//    [request setValue:[self TokenValue] forHTTPHeaderField:TOKEN_KEY];
    NSURLSessionUploadTask *postDataTask = [session uploadTaskWithRequest:request fromData:nil completionHandler: ^(NSData *data, NSURLResponse *response, NSError *error) {
        if (error != nil) {
            NSDictionary *responseData = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
            NSLog(@"%@",responseData);
            completion(NO, responseData);
            
        } else
        {
            NSDictionary *responseData = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
            NSLog(@"%@",response);
            completion(YES, responseData);
        }
    }];
    [postDataTask resume];
}

@end
