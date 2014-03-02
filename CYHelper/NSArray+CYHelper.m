//
// Created by lancy on 26/11/12.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "NSArray+CYHelper.h"
#import "CYHelperPrivate.h"


@implementation NSArray (CYHelper)

- (NSArray *)subarrayFromIndex:(NSUInteger)index {
    NSRange range = {index, [self count] - index};
    return [self subarrayWithRange:range];
    
}

- (NSArray *)subarrayToIndex:(NSUInteger)index {
    NSRange range = {0, index};
    return [self subarrayWithRange:range];
}

- (NSArray *)mapWithBlock:(id (^)(id value))handlerBlock {
    return [CYHelperPrivate cy_mapCollection:self block:handlerBlock];
}

- (NSArray *)filterWithBlock:(BOOL (^)(id value))handlerBlock {
    return [CYHelperPrivate cy_filterCollection:self block:handlerBlock filterToggle:YES];
}

- (NSArray *)rejectWithBlock:(BOOL (^)(id value))handlerBlock {
    return [CYHelperPrivate cy_filterCollection:self block:handlerBlock filterToggle:NO];
}

@end