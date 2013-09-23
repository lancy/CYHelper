//
//  NSObject+CYNotification.m
//  CYHelperDemo
//
//  Created by Lancy on 23/9/13.
//  Copyright (c) 2013 GraceLancy. All rights reserved.
//

#import "NSObject+CYNotification.h"

@implementation NSObject (CYNotification)

- (void)postNotificationName:(NSString *)notificationName
{
    [[NSNotificationCenter defaultCenter] postNotificationName:notificationName object:self];
}

- (void)postNotificationName:(NSString *)notificationName userInfo:(NSDictionary *)userInfo
{
    [[NSNotificationCenter defaultCenter] postNotificationName:notificationName object:self userInfo:userInfo];
}

- (void)observeNotificationName:(NSString *)notificationName selector:(SEL)selector
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:selector name:notificationName object:nil];
}

- (void)unObserveNotificationName:(NSString *)notificationName
{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:notificationName object:nil];
}

@end
