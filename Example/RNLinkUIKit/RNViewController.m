//
//  RNViewController.m
//  RNLinkUIKit
//
//  Created by MuMu on 12/21/2016.
//  Copyright (c) 2016 MuMu. All rights reserved.
//

#import "RNViewController.h"
#import "RNLinkUIKit.h"

@interface RNViewController ()

@end

@implementation RNViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *label = RNLinkUIKit.label
                                .numberOfLines(1)
                                .fontWithSystemSize(17.f)
                                .textColorFromHex(0x999999)
                                .text(@"Hello RNLinkUIKit!")
                                .translatesAutoresizingMaskIntoConstraints(NO)
                                .make;
    [self.view addSubview:label];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:label attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:label attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
