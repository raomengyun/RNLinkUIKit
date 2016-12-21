//
//  RNScrollViewMaker.m
//
//  Created by MuMu on 2016/12/6.
//  Copyright © 2016年 MuMu All rights reserved.
//

#import "RNScrollViewMaker.h"

@interface RNScrollViewMaker(){
    UIScrollView *_scrollViewMake;
}

@end
@implementation RNScrollViewMaker

- (id)make {
    if (!_scrollViewMake) {
        _scrollViewMake = [[UIScrollView alloc] init];
    }
    return _scrollViewMake;
}

- (RNScrollViewMaker *(^)(CGPoint))contentOffset {
    return ^(CGPoint contentOffset){
        [self.make setContentOffset:contentOffset];
        return self;
    };
}

- (RNScrollViewMaker *(^)(CGSize))contentSize {
    return ^(CGSize contentSize){
        [self.make setContentSize:contentSize];
        return self;
    };
}

- (RNScrollViewMaker *(^)(UIEdgeInsets))contentInset {
    return ^(UIEdgeInsets contentInset){
        [self.make setContentInset:contentInset];
        return self;
    };
}

- (RNScrollViewMaker *(^)(id<UIScrollViewDelegate>))delegate {
    return ^(id<UIScrollViewDelegate> delegate){
        [self.make setDelegate:delegate];
        return self;
    };
}

- (RNScrollViewMaker *(^)(BOOL))bounces {
    return ^(BOOL bounces){
        [self.make setBounces:bounces];
        return self;
    };
}

- (RNScrollViewMaker *(^)(BOOL))alwaysBounceVertical {
    return ^(BOOL alwaysBounceVertical){
        [self.make setAlwaysBounceVertical:alwaysBounceVertical];
        return self;
    };
}

- (RNScrollViewMaker *(^)(BOOL))alwaysBounceHorizontal {
    return ^(BOOL alwaysBounceHorizontal){
        [self.make setAlwaysBounceHorizontal:alwaysBounceHorizontal];
        return self;
    };
}

- (RNScrollViewMaker *(^)(BOOL))pagingEnabled {
    return ^(BOOL pagingEnabled){
        [self.make setPagingEnabled:pagingEnabled];
        return self;
    };
}

- (RNScrollViewMaker *(^)(BOOL))scrollEnabled {
    return ^(BOOL scrollEnabled){
        [self.make setScrollEnabled:scrollEnabled];
        return self;
    };
}

- (RNScrollViewMaker *(^)(BOOL))showsHorizontalScrollIndicator {
    return ^(BOOL showsHorizontalScrollIndicator){
        [self.make setShowsHorizontalScrollIndicator:showsHorizontalScrollIndicator];
        return self;
    };
}

- (RNScrollViewMaker *(^)(BOOL))showsVerticalScrollIndicator {
    return ^(BOOL showsVerticalScrollIndicator){
        [self.make setShowsVerticalScrollIndicator:showsVerticalScrollIndicator];
        return self;
    };
}

- (RNScrollViewMaker *(^)(UIEdgeInsets))scrollIndicatorInsets {
    return ^(UIEdgeInsets scrollIndicatorInsets){
        [self.make setScrollIndicatorInsets:scrollIndicatorInsets];
        return self;
    };
}

- (RNScrollViewMaker *(^)(UIScrollViewIndicatorStyle))indicatorStyle {
    return ^(UIScrollViewIndicatorStyle indicatorStyle){
        [self.make setIndicatorStyle:indicatorStyle];
        return self;
    };
}

- (RNScrollViewMaker *(^)(BOOL))delaysContentTouches {
    return ^(BOOL delaysContentTouches){
        [self.make setDelaysContentTouches:delaysContentTouches];
        return self;
    };
}

- (RNScrollViewMaker *(^)(BOOL))canCancelContentTouches {
    return ^(BOOL canCancelContentTouches){
        [self.make setCanCancelContentTouches:canCancelContentTouches];
        return self;
    };
}

- (RNScrollViewMaker *(^)(CGFloat))minimumZoomScale {
    return ^(CGFloat minimumZoomScale){
        [self.make setMinimumZoomScale:minimumZoomScale];
        return self;
    };
}

- (RNScrollViewMaker *(^)(CGFloat))maximumZoomScale {
    return ^(CGFloat maximumZoomScale){
        [self.make setMaximumZoomScale:maximumZoomScale];
        return self;
    };
}

- (RNScrollViewMaker *(^)(CGFloat))zoomScale {
    return ^(CGFloat zoomScale){
        [self.make setZoomScale:zoomScale];
        return self;
    };
}

- (RNScrollViewMaker *(^)(CGFloat))bouncesZoom {
    return ^(CGFloat bouncesZoom){
        [self.make setBouncesZoom:bouncesZoom];
        return self;
    };
}

- (RNScrollViewMaker *(^)(BOOL))scrollsToTop {
    return ^(BOOL scrollsToTop){
        [self.make setScrollsToTop:scrollsToTop];
        return self;
    };
}

- (RNScrollViewMaker *(^)(UIScrollViewKeyboardDismissMode))keyboardDismissMode {
    return ^(UIScrollViewKeyboardDismissMode keyboardDismissMode){
        [self.make setKeyboardDismissMode:keyboardDismissMode];
        return self;
    };
}

@end
