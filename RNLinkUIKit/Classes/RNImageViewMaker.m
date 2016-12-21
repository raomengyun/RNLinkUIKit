//
//  RNImageViewMaker.m
//
//  Created by MuMu on 2016/12/5.
//  Copyright © 2016年 MuMu All rights reserved.
//

#import "RNImageViewMaker.h"

@interface RNImageViewMaker(){
    UIImageView *_imageViewMake;
}

@end
@implementation RNImageViewMaker

- (id)make {
    if (!_imageViewMake) {
        _imageViewMake = [[UIImageView alloc] init];
    }
    return _imageViewMake;
}

- (RNImageViewMaker *(^)(UIImage *))image {
    return ^(UIImage *image) {
        [self.make setImage:image];
        return self;
    };
}

- (RNImageViewMaker *(^)(NSString *))imageWithImageName {
    return ^(NSString *image) {
        [self.make setImage:[UIImage imageNamed:image]];
        return self;
    };
}

- (RNImageViewMaker *(^)(UIImage *))highlightedImage {
    return ^(UIImage *highlightedImage) {
        [self.make setHighlightedImage:highlightedImage];
        return self;
    };
}

- (RNImageViewMaker *(^)(NSString *))highlightedImageWithImageName {
    return ^(NSString *image) {
        [self.make setHighlightedImage:[UIImage imageNamed:image]];
        return self;
    };
}

- (RNImageViewMaker *(^)(BOOL))highlighted {
    return ^(BOOL highlighted){
        [self.make setHighlighted:highlighted];
        return self;
    };
}

- (RNImageViewMaker *(^)(NSArray<UIImage *> *))animationImages {
    return ^(NSArray<UIImage *> *animationImages){
        [self.make setAnimationImages:animationImages];
        return self;
    };
}

- (RNImageViewMaker *(^)(NSArray<UIImage *> *))highlightedAnimationImages {
    return ^(NSArray<UIImage *> *highlightedAnimationImages){
        [self.make setHighlightedAnimationImages:highlightedAnimationImages];
        return self;
    };
}

- (RNImageViewMaker *(^)(NSTimeInterval))animationDuration {
    return ^(NSTimeInterval animationDuration){
        [self.make setAnimationDuration:animationDuration];
        return self;
    };
}

- (RNImageViewMaker *(^)(NSInteger))animationRepeatCount {
    return ^(NSInteger animationRepeatCount) {
        [self.make setAnimationRepeatCount:animationRepeatCount];
        return self;
    };
}

@end
