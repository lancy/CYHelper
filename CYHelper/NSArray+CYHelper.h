//
// Created by lancy on 26/11/12.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <Foundation/Foundation.h>

@interface NSArray (CYHelper)

- (NSArray *)subarrayFromIndex:(NSUInteger)index;
- (NSArray *)subarrayToIndex:(NSUInteger)index;

- (NSArray *)mapWithBlock:(id (^)(id value))handlerBlock;
- (NSArray *)filterWithBlock:(BOOL (^)(id value))handlerBlock;

@end