//
// Created by lancy on 26/11/12.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "NSArray+CYHelper.h"


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
    NSMutableArray *result = [NSMutableArray array];
    for (id value in self) {
        [result addObject:handlerBlock(value)];
    }
    return result;
}

- (NSArray *)filterWithBlock:(BOOL (^)(id value))handlerBlock {
    NSMutableArray *result = [NSMutableArray array];
    for (id value in self) {
        if (handlerBlock(value) == NO) {
            [result addObject:value];
        }
    }
    return result;
}

@end