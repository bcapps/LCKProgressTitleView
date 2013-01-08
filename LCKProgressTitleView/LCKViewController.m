//
//  LCKViewController.m
//  LCKProgressTitleView
//
//  Created by Brian Capps on 1/7/13.
//  Copyright (c) 2013 Lickability. All rights reserved.
//

#import "LCKViewController.h"

@interface LCKViewController ()

@end

@implementation LCKViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addButtonTapped)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
