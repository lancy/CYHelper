//
//  NSObject+CYHelper.h
//  CYHelperDemo
//
//  Created by Lancy on 11/8/13.
//  Copyright (c) 2013 GraceLancy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (CYHelper)

- (void)performBlock:(void (^)(void))block afterDelay:(NSTimeInterval)delay;

@end
