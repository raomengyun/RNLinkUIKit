//
//  RNImageViewMaker.h
//
//  Created by MuMu on 2016/12/5.
//  Copyright © 2016年 MuMu All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RNViewMaker.h"

@interface RNImageViewMaker : RNViewMaker

- (RNImageViewMaker *(^)(UIImage *))image;
- (RNImageViewMaker *(^)(NSString *))imageWithImageName;

- (RNImageViewMaker *(^)(UIImage *))highlightedImage;
- (RNImageViewMaker *(^)(NSString *))highlightedImageWithImageName;

- (RNImageViewMaker *(^)(BOOL))highlighted;

- (RNImageViewMaker *(^)(NSArray<UIImage *> *))animationImages;

- (RNImageViewMaker *(^)(NSArray<UIImage *> *))highlightedAnimationImages;

- (RNImageViewMaker *(^)(NSTimeInterval))animationDuration;

- (RNImageViewMaker *(^)(NSInteger))animationRepeatCount;

@end
