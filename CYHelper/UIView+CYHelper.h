//
//  UIView+CYHelper.h
//  CYHelperDemo
//
//  Created by Lancy on 11/8/13.
//  Copyright (c) 2013 GraceLancy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (CYHelper)

@property (nonatomic) CGFloat x;
@property (nonatomic) CGFloat y;
@property (nonatomic) CGFloat width;
@property (nonatomic) CGFloat height;
@property (nonatomic) CGSize size;
@property (nonatomic) CGPoint origin;
@property (nonatomic) CGFloat bottom;
@property (nonatomic) CGFloat right;
@property (nonatomic) CGFloat centerX;
@property (nonatomic) CGFloat centerY;

- (void)removeAllSubviews;

@end

