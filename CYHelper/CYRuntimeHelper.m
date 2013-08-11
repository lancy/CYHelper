//
//  CYRuntimeHelper.m
//  CYHelper
//
//  Created by Lancy on 26/11/12.
//
//

#import "CYRuntimeHelper.h"

@implementation CYRuntimeHelper

+ (void)printCallStackWithCount:(NSUInteger)count
{
    void* callstack[count];
    int i, frames = backtrace(callstack, count);
    char** strs = backtrace_symbols(callstack, frames);
    for (i = 0; i < frames; ++i) {
        NSLog(@"%@", [NSString stringWithCString:strs[i] encoding:NSUTF8StringEncoding]);
    }
    free(strs);

}


@end
