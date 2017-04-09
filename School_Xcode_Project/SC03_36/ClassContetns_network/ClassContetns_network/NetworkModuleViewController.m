//
//  NetworkModuleViewController.m
//  ClassContetns_network
//
//  Created by SSangGA on 2017. 3. 17..
//  Copyright © 2017년 ysm. All rights reserved.
//

#import "NetworkModuleViewController.h"
#import "ViewController.h"

@interface NetworkModuleViewController ()

@property ViewController *vcObject;
@property VCBlock username;
@property VCBlock password;

@end
@implementation NetworkModuleViewController




/**
 receive VCBlock type object ID & PW. And alloc to VCBlock type property ID & PW

 *@param ID receive VCBlock type value
 *@param PW receive VCBlock type value
 */
- (void)passAccountToNWmodule:(VCBlock)ID password:(VCBlock)PW
{
    self.username = ID;
    self.password = PW;
}

- (void)signUp:(CompletionBlock)completion
{
    //session객체 생성
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    // SignUp retquest객체 생성
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%@",SIGNUP_URL]];  //URL 담은 url 변수 생성
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];    //url주소로 request 변수 생성
    NSString *username = [[NSUserDefaults standardUserDefaults] objectForKey:@"username"];  //username
    NSString *password1 = [[NSUserDefaults standardUserDefaults] objectForKey:@"password1"];
    NSString *password2 = [[NSUserDefaults standardUserDefaults] objectForKey:@"password2"];
    NSString *noteDataString = [NSString stringWithFormat:@"username=%@&password1=%@&password2=%@",username,password1,password2];
    
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
            dispatch_async(dispatch_get_main_queue(), ^{
                NSDictionary *responseData = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
                completion(YES, responseData);
            });
            NSLog(@"%@",response);
        }
    }];
    [postDataTask resume];
}

/**
 네트워크 session 만들고 url만들어 url기반으로 request 만들고 ID,PW에 VCBlock type property 값을 받아 넣은다음 String 타입 noteDataString를 만들때 username,password를 넣고 UTF8형식 request.HTTPBody만들고 HTTPMethod는 Post방식으로 지정

 @param completion <#completion description#>
 */
- (void)logIn:(CompletionBlock)completion;
{
    //session객체 생성
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    // login retquest객체 생성
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%@",LOGIN_URL]];  //URL 담은 url 변수 생성
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];    //url주소로 request 변수 생성
    NSString *ID = self.username(); //ViewController에서 VCBlock 타입 username을 통해
    NSString *PW = self.password();

    NSString *noteDataString = [NSString stringWithFormat:@"username=%@&password=%@",ID,PW];
    
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
//            self.vcObject 
            
        }
    }];
    [postDataTask resume];
}

- (void)logOut:(CompletionBlock)completion;
{
    
}

- (void)logInWithUserName:(NSString *)userName
                 password:(NSString *)password
               completion:(CompletionBlock)completion
{
    //session객체 생성
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    // login retquest객체 생성
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%@",LOGIN_URL]];  //URL 담은 url 변수 생성
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];    //url주소로 request 변수 생성
    
    NSString *noteDataString = [NSString stringWithFormat:@"username=%@&password=%@",userName,password];
    
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
