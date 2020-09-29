//
//  AppDelegate.m
//  BoNiuCore
//
//  Created by  zz on 2020/9/29.
//

#import "AppDelegate.h"
#import "ZZViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame: [UIScreen mainScreen].bounds];
    self.window.backgroundColor = UIColor.whiteColor;
    self.window.rootViewController = [ZZViewController new];
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
