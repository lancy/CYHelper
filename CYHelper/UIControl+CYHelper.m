//
//  UIControl+CYHelper.m
//  CYHelperDemo
//
//  Created by Lancy on 24/9/13.
//  Copyright (c) 2013 GraceLancy. All rights reserved.
//

#import "UIControl+CYHelper.h"
#import "NSObject+AssociatedObjects.h"

@implementation UIControl (CYHelper)

static char kUIControlUserInfoKey;

- (void)setUserInfo:(NSDictionary *)userInfo
{
    [self associateValue:userInfo withKey:&kUIControlUserInfoKey];
}

- (NSDictionary *)userInfo
{
    return [self associatedValueForKey:&kUIControlUserInfoKey];
}

@end
