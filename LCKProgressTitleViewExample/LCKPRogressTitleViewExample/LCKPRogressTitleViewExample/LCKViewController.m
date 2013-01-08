//
//  LCKViewController.m
//  LCKPRogressTitleViewExample
//
//  Created by Brian Capps on 1/7/13.
//  Copyright (c) 2013 Lickability. All rights reserved.
//

#import "LCKViewController.h"
#import "LCKProgressTitleView.h"

@interface LCKViewController ()

@property (strong) LCKProgressTitleView *progressTitleView;

@end

@implementation LCKViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(incrementProgress)];
    
    self.progressTitleView = [[LCKProgressTitleView alloc] initWithFrame:CGRectMake(0, 0, 100, CGRectGetHeight(self.navigationController.navigationBar.frame))];
    self.progressTitleView.progress = 0.0;
    self.progressTitleView.text = NSLocalizedString(@"Tap +", nil);
    self.navigationItem.titleView = self.progressTitleView;
}

- (void)incrementProgress {    
    self.progressTitleView.progress = 0.0;

    NSTimeInterval delayInSeconds = 0.1;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, delayInSeconds * NSEC_PER_SEC);
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        self.progressTitleView.text = NSLocalizedString(@"Sending…", nil);
        [self.progressTitleView setProgress:1.0 animated:YES];
    });
}

@end
