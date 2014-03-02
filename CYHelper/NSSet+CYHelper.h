//
//  NSSet+CYHelper.h
//  CYHelperDemo
//
//  Created by Lancy on 2/3/14.
//  Copyright (c) 2014 GraceLancy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSSet (CYHelper)

- (NSSet *)map:(id (^)(id value))handlerBlock;
- (NSSet *)filter:(BOOL (^)(id value))handlerBlock;
- (NSSet *)reject:(BOOL (^)(id value))handlerBlock;

@end
