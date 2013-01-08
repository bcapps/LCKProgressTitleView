//
//  LCKProgressTitleView.m
//  Velocity
//
//  Created by Brian Capps on 1/5/13.
//  Copyright (c) 2013 Lickability. All rights reserved.
//

#import "LCKProgressTitleView.h"

@interface LCKProgressTitleView ()

@property (nonatomic, strong) UIView *containerView;

@end

@implementation LCKProgressTitleView

const CGFloat LCKProgressTitleViewLargeVerticalPadding = 4.0;
const CGFloat LCKProgressTitleViewSmallVerticalPadding = 2.0;
const CGFloat LCKProgressTitleViewPaddingSizeThreshhold = 32.0;

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    if (self) {
        self.autoresizingMask = UIViewAutoresizingFlexibleHeight;
        self.containerView = [[UIView alloc] initWithFrame:CGRectZero];
        self.progressInformationLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        self.progressView = [[UIProgressView alloc] initWithProgressViewStyle:UIProgressViewStyleBar];
        
        [self styleProgressInformationLabel];
        
        [self.containerView addSubview:self.progressInformationLabel];
        [self.containerView addSubview:self.progressView];
        
        [self addSubview:self.containerView];
    }
    
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    [self.progressInformationLabel sizeToFit];
    self.progressInformationLabel.frame = CGRectMake(0, 0, CGRectGetWidth(self.bounds), CGRectGetHeight(self.progressInformationLabel.frame));
    
    // Set the progress view top padding based on a threshhold.
    CGFloat progressviewTopPadding = LCKProgressTitleViewLargeVerticalPadding;
    if (CGRectGetHeight(self.bounds) <= LCKProgressTitleViewPaddingSizeThreshhold) {
        progressviewTopPadding = LCKProgressTitleViewSmallVerticalPadding;
    }

    self.progressView.frame = CGRectMake(0, CGRectGetMaxY(self.progressInformationLabel.frame) + progressviewTopPadding, CGRectGetWidth(self.bounds), CGRectGetHeight(self.progressView.frame));
    
    self.containerView.frame = CGRectMake(0, 0, CGRectGetWidth(self.bounds), CGRectGetMaxY(self.progressView.frame));
    self.containerView.center = CGPointMake(CGRectGetMidX(self.bounds), CGRectGetMidY(self.bounds));
}

- (void)styleProgressInformationLabel {
    // A default, Messages-like style for the label.
    self.progressInformationLabel.backgroundColor = [UIColor clearColor];
    self.progressInformationLabel.textAlignment = NSTextAlignmentCenter;
    self.progressInformationLabel.font = [UIFont boldSystemFontOfSize:11.0];
    self.progressInformationLabel.textColor = [UIColor whiteColor];
    self.progressInformationLabel.shadowColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
}

#pragma mark - Overriden getters and setters

- (void)setProgress:(float)progress animated:(BOOL)animated{
    [self.progressView setProgress:progress animated:animated];
}

- (void)setProgress:(float)progress {
    self.progressView.progress = progress;
}

- (float)progress {
    return self.progressView.progress;
}

- (void)setText:(NSString *)text {
    self.progressInformationLabel.text = text;
}

- (NSString *)text {
    return self.progressInformationLabel.text;
}

@end
