//
//  NSSet+CYHelper.m
//  CYHelperDemo
//
//  Created by Lancy on 2/3/14.
//  Copyright (c) 2014 GraceLancy. All rights reserved.
//

#import "NSSet+CYHelper.h"

@implementation NSSet (CYHelper)

- (NSSet *)mapWithBlock:(id (^)(id value))handlerBlock {
    NSMutableSet *result = [NSMutableSet set];
    for (id value in self) {
        [result addObject:handlerBlock(value)];
    }
    return result;
}

- (NSSet *)filterWithBlock:(BOOL (^)(id value))handlerBlock {
    NSMutableSet *result = [NSMutableSet set];
    for (id value in self) {
        if (handlerBlock(value) == NO) {
            [result addObject:value];
        }
    }
    return result;
}
@end
