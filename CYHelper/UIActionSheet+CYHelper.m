//
//  UIActionSheet+CYHelper.m
//  CYHelperDemo
//
//  Created by Lancy on 24/9/13.
//  Copyright (c) 2013 GraceLancy. All rights reserved.
//

#import "UIActionSheet+CYHelper.h"
#import "NSObject+AssociatedObjects.h"

@implementation UIActionSheet (CYHelper)

static char kUIActionSheetUserInfoKey;

- (void)setUserInfo:(NSDictionary *)userInfo
{
    [self associateValue:userInfo withKey:&kUIActionSheetUserInfoKey];
}

- (NSDictionary *)userInfo
{
    return [self associatedValueForKey:&kUIActionSheetUserInfoKey];
}

@end
