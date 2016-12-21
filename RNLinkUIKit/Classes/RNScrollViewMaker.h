//
//  RNScrollViewMaker.h
//
//  Created by MuMu on 2016/12/6.
//  Copyright © 2016年 MuMu All rights reserved.
//

#import "RNViewMaker.h"

@interface RNScrollViewMaker : RNViewMaker

- (RNScrollViewMaker *(^)(CGPoint))contentOffset;

- (RNScrollViewMaker *(^)(CGSize))contentSize;

- (RNScrollViewMaker *(^)(UIEdgeInsets))contentInset;

- (RNScrollViewMaker *(^)(id<UIScrollViewDelegate>))delegate;

- (RNScrollViewMaker *(^)(BOOL))bounces;

- (RNScrollViewMaker *(^)(BOOL))alwaysBounceVertical;

- (RNScrollViewMaker *(^)(BOOL))alwaysBounceHorizontal;

- (RNScrollViewMaker *(^)(BOOL))pagingEnabled;

- (RNScrollViewMaker *(^)(BOOL))scrollEnabled;

- (RNScrollViewMaker *(^)(BOOL))showsHorizontalScrollIndicator;

- (RNScrollViewMaker *(^)(BOOL))showsVerticalScrollIndicator;

- (RNScrollViewMaker *(^)(UIEdgeInsets))scrollIndicatorInsets;

- (RNScrollViewMaker *(^)(UIScrollViewIndicatorStyle))indicatorStyle;

- (RNScrollViewMaker *(^)(BOOL))delaysContentTouches;

- (RNScrollViewMaker *(^)(BOOL))canCancelContentTouches;

- (RNScrollViewMaker *(^)(CGFloat))minimumZoomScale;

- (RNScrollViewMaker *(^)(CGFloat))maximumZoomScale;

- (RNScrollViewMaker *(^)(CGFloat))zoomScale;

- (RNScrollViewMaker *(^)(CGFloat))bouncesZoom;

- (RNScrollViewMaker *(^)(BOOL))scrollsToTop;

- (RNScrollViewMaker *(^)(UIScrollViewKeyboardDismissMode))keyboardDismissMode;

@end
