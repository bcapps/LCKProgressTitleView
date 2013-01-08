//
//  LCKAppDelegate.m
//  LCKProgressTitleView
//
//  Created by Brian Capps on 1/7/13.
//  Copyright (c) 2013 Lickability. All rights reserved.
//

#import "LCKAppDelegate.h"

#import "LCKViewController.h"

@implementation LCKAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    self.viewController = [[LCKViewController alloc] initWithNibName:@"LCKViewController" bundle:nil];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:self.viewController];
    self.window.rootViewController = navigationController;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
