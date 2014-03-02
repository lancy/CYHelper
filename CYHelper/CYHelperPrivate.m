//
//  CYHelperPrivate.m
//  CYHelperDemo
//
//  Created by lancy on 14-3-2.
//  Copyright (c) 2014年 GraceLancy. All rights reserved.
//

#import "CYHelperPrivate.h"

@implementation CYHelperPrivate

+ (id)cy_filterCollection:(id)collection
                    block:(BOOL (^)(id value))handlerBlock
             filterToggle:(BOOL)toggle {
    Class class = [self classFromCollection:collection];
    id result = [class new];
    for (id value in collection) {
        if (handlerBlock(value) == toggle) {
            [result addObject:value];
        }
    }
    return result;
}

+ (id)cy_mapCollection:(id)collection
                 block:(id (^)(id value))handlerBlock {
    Class class = [self classFromCollection:collection];
    id result = [class new];
    for (id value in collection) {
        [result addObject:handlerBlock(value)];
    }
    return result;
}

+ (Class)classFromCollection:(id)collection {
    Class class;
    if ([collection isKindOfClass:[NSArray class]]) {
        class = [NSMutableArray class];
    } else if ([collection isKindOfClass:[NSSet class]]) {
        class = [NSMutableSet class];
    }
    return class;
}

@end
