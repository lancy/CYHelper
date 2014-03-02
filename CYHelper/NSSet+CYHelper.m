//
//  NSSet+CYHelper.m
//  CYHelperDemo
//
//  Created by Lancy on 2/3/14.
//  Copyright (c) 2014 GraceLancy. All rights reserved.
//

#import "NSSet+CYHelper.h"
#import "CYHelperPrivate.h"

@implementation NSSet (CYHelper)

- (NSSet *)mapWithBlock:(id (^)(id value))handlerBlock {
    return [CYHelperPrivate cy_mapCollection:self block:handlerBlock];
}

- (NSSet *)filterWithBlock:(BOOL (^)(id value))handlerBlock {
    return [CYHelperPrivate cy_filterCollection:self block:handlerBlock filterToggle:YES];
}

- (NSSet *)rejectWithBlock:(BOOL (^)(id value))handlerBlock {
    return [CYHelperPrivate cy_filterCollection:self block:handlerBlock filterToggle:NO];
}
@end
