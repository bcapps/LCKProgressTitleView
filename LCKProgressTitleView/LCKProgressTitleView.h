//
//  LCKProgressTitleView.h
//  Velocity
//
//  Created by Brian Capps on 1/5/13.
//  Copyright (c) 2013 Lickability. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LCKProgressTitleView : UIView

@property (nonatomic, strong) UIProgressView *progressView;
@property (nonatomic, strong) UILabel *progressInformationLabel;

@property (nonatomic) float progress;
@property (nonatomic) NSString *text;

- (void)setProgress:(float)progress animated:(BOOL)animated;

@end
