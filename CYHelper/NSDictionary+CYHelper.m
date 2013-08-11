//
// Created by lancy on 26/11/12.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "NSDictionary+CYHelper.h"


@implementation NSDictionary (CYHelper)

- (NSData *)jsonData
{
    NSError *error;
    NSData *result = [NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:&error];
    return result;
}

- (NSString *)jsonString
{
    NSString *result = [[NSString alloc] initWithData:[self jsonData] encoding:NSUTF8StringEncoding];
    return result;
}
@end