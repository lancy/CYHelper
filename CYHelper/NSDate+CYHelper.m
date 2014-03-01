//
// Created by lancy on 26/11/12.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "NSDate+CYHelper.h"


@implementation NSDate (CYHelper)

- (NSString *)stringWithDateFormat:(NSString *)dateFormat {
    NSDateFormatter * dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:dateFormat];
    return [dateFormatter stringFromDate:self];
}

- (NSInteger)daysWithinEraToDate:(NSDate *)toDate {
    NSCalendar *gregorian = [[NSCalendar alloc]
                             initWithCalendarIdentifier:NSGregorianCalendar];
    [gregorian setTimeZone:[NSTimeZone localTimeZone]];
    // Timezone offset issue
    NSDate *newDate1 = [self dateByAddingTimeInterval:[[NSTimeZone localTimeZone] secondsFromGMT]];
    NSDate *newDate2 = [toDate dateByAddingTimeInterval:[[NSTimeZone localTimeZone] secondsFromGMT]];
    NSInteger startDay = [gregorian ordinalityOfUnit:NSDayCalendarUnit
                                            inUnit: NSEraCalendarUnit forDate:newDate1];
    NSInteger endDay = [gregorian ordinalityOfUnit:NSDayCalendarUnit
                                          inUnit: NSEraCalendarUnit forDate:newDate2];
    return endDay - startDay;
}
@end