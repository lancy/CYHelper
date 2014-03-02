//
//  CYHelperPrivate.h
//  CYHelperDemo
//
//  Created by lancy on 14-3-2.
//  Copyright (c) 2014年 GraceLancy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CYHelperPrivate : NSObject

+ (id)cy_filterCollection:(id)collection
                    block:(BOOL (^)(id value))handlerBlock
             filterToggle:(BOOL)toggle;

+ (id)cy_mapCollection:(id)collection
                 block:(id (^)(id value))handlerBlock;
@end
