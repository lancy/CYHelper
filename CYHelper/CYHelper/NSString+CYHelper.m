//
// Created by lancy on 26/11/12.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "NSString+CYHelper.h"
#import "NSData+CYHelper.h"


@implementation NSString (CYHelper)

- (NSDictionary *)jsonObject
{
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    return [data jsonObject];
}

@end