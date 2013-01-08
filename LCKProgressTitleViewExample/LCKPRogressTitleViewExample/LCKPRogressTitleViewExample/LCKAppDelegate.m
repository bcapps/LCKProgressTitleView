//
//  LCKAppDelegate.m
//  LCKPRogressTitleViewExample
//
//  Created by Brian Capps on 1/7/13.
//  Copyright (c) 2013 Lickability. All rights reserved.
//

#import "LCKAppDelegate.h"
#import "LCKViewController.h"

@implementation LCKAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    LCKViewController *contentViewController = [[LCKViewController alloc] initWithNibName:@"LCKViewController" bundle:nil];
    
    self.window.rootViewController =  [[UINavigationController alloc] initWithRootViewController:contentViewController];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
