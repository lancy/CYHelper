//
//  UIAlertView+CYHelper.m
//  CYHelperDemo
//
//  Created by Lancy on 24/9/13.
//  Copyright (c) 2013 GraceLancy. All rights reserved.
//

#import "UIAlertView+CYHelper.h"
#import "NSObject+AssociatedObjects.h"


@implementation UIAlertView (CYHelper)

static char kUIAlertViewUserInfoKey;

- (void)setUserInfo:(NSDictionary *)userInfo
{
    [self associateValue:userInfo withKey:&kUIAlertViewUserInfoKey];
}

- (NSDictionary *)userInfo
{
    return [self associatedValueForKey:&kUIAlertViewUserInfoKey];
}

@end