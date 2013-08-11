//
//  CYRuntimeHelper.h
//  CYHelper
//
//  Created by Lancy on 26/11/12.
//
//

#import <Foundation/Foundation.h>
#include <execinfo.h>


@interface CYRuntimeHelper : NSObject

+ (void)printCallStackWithCount:(NSUInteger)count;

@end
