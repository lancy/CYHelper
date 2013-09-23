//
//  NSObject+CYNotification.h
//  CYHelperDemo
//
//  Created by Lancy on 23/9/13.
//  Copyright (c) 2013 GraceLancy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (CYNotification)

- (void)postNotificationName:(NSString *)notificationName;
- (void)postNotificationName:(NSString *)notificationName userInfo:(NSDictionary *)userInfo;
- (void)observeNotificationName:(NSString *)notificationName selector:(SEL)selector;
- (void)unObserveNotificationName:(NSString *)notificationName;

@end
