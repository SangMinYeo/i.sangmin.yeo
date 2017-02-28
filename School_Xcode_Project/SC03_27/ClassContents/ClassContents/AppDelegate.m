//
//  AppDelegate.m
//  ClassContents
//
//  Created by SSangGA on 2017. 2. 21..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
//    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
//
//    UIStoryboard *sto = [UIStoryboard storyboardWithName:@"Sub" bundle:nil];
////    ViewController *vc = [sto instantiateInitialViewController];
////    만약 초기 viewcontroller로 지정된게 ViewController가 없다면 identifier로 가져온다.
//    ViewController *vc = [sto instantiateViewControllerWithIdentifier:@"ViewController"];
//    UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:vc];
//    self.window.rootViewController = navi;
//    [self.window makeKeyAndVisible];

//    탭바
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    ViewController *vc1 = [[ViewController alloc] init];
    ViewController *vc2 = [[ViewController alloc] init];
    ViewController *vc3 = [[ViewController alloc] init];
    ViewController *vc4 = [[ViewController alloc] init];
    ViewController *vc5 = [[ViewController alloc] init];
    ViewController *vc6 = [[ViewController alloc] init];


//    ViewController *tabbar = [sto instantiateViewControllerWithIdentifier:@"Tab1ViewController"];
    
    UITabBarController *tabbar = [[UITabBarController alloc] init];
    tabbar.viewControllers = @[vc1,vc2,vc3,vc4,vc5,vc6];
    UIImage *image1 = [UIImage imageNamed:@"cat.png"];
    UIImage *image2 = [UIImage imageNamed:@"images.png"];
    
    
    UIButton *preback = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 35, 35)];
    [preback setBackgroundImage:[UIImage imageNamed:@"back"] forState:UIControlStateNormal];

//    UITabBarItem *item1 = [[UITabBarItem alloc]initWithTitle:@"Title" image:image1 selectedImage:image2];
    

    
    UITabBarItem *item1 = [[UITabBarItem alloc]initWithTitle:@"Title1" image:nil selectedImage:nil];
    UITabBarItem *item2 = [[UITabBarItem alloc]initWithTitle:@"Title2" image:nil selectedImage:nil];
    UITabBarItem *item3 = [[UITabBarItem alloc]initWithTitle:@"Title3" image:nil selectedImage:nil];
    UITabBarItem *item4 = [[UITabBarItem alloc]initWithTitle:@"Title4" image:nil selectedImage:nil];
    UITabBarItem *item5 = [[UITabBarItem alloc]initWithTitle:@"Title5" image:nil selectedImage:nil];
    UITabBarItem *item6 = [[UITabBarItem alloc]initWithTitle:@"Title6" image:nil selectedImage:nil];
    
    
    vc1.tabBarItem = item1;
    vc2.tabBarItem = item2;
    vc3.tabBarItem = item3;
    vc4.tabBarItem = item4;
    vc5.tabBarItem = item5;
    vc6.tabBarItem = item6;
    
    
    
    self.window.rootViewController = tabbar;
    [self.window makeKeyAndVisible];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
