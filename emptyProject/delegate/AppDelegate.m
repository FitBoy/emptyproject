//
//  AppDelegate.m
//  emptyProject
//
//  Created by MAC on 2021/3/29.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "ViewController_mainTab.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window  = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    ViewController_mainTab *vc = [[ViewController_mainTab alloc]init];
    
    self.window.rootViewController = vc;
    
    [self.window makeKeyAndVisible];
    [self setTabBar];
    return YES;
}


-(void)setTabBar{
    
    UITabBarItem *item = [UITabBarItem appearance];
    [item setTitleTextAttributes:@{ NSForegroundColorAttributeName:[UIColor grayColor]} forState:UIControlStateNormal];
    [item setTitleTextAttributes:@{ NSForegroundColorAttributeName:[UIColor colorWithRed:1.0 green:0 blue:0 alpha:1]} forState:UIControlStateSelected];
}




@end
