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

- (NSArray *)map:(id (^)(id value))handlerBlock {
    return [CYHelperPrivate cy_mapCollection:self block:handlerBlock];
}

- (NSArray *)filter:(BOOL (^)(id value))handlerBlock {
    return [CYHelperPrivate cy_filterCollection:self block:handlerBlock filterToggle:YES];
}

- (NSArray *)reject:(BOOL (^)(id value))handlerBlock {
    return [CYHelperPrivate cy_filterCollection:self block:handlerBlock filterToggle:NO];
}

- (NSArray *)flattenArray {
    NSMutableArray *result = [NSMutableArray array];
    for (id object in self) {
        if ([object isKindOfClass:[NSArray class]]) {
            [result addObjectsFromArray:[object flattenArray]];
        } else {
            [result addObject:object];
        }
    }
    return result;
}

@end