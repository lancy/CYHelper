//
// Created by lancy on 26/11/12.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "NSArray+CYHelper.h"


@implementation NSArray (CYHelper)

- (NSArray *)subarrayFromIndex:(NSUInteger)index
{
    NSRange range = {index, [self count] - index};
    return [self subarrayWithRange:range];
    
}

- (NSArray *)subarrayToIndex:(NSUInteger)index
{
    NSRange range = {0, index};
    return [self subarrayWithRange:range];
}




@end