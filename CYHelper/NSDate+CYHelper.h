//
// Created by lancy on 26/11/12.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <Foundation/Foundation.h>

@interface NSDate (CYHelper)


// example: dateFormat:@"yyyy-MM-dd 'at' HH:mm";
// formattedDateString: 2001-01-02 at 13:00
- (NSString *)stringWithDateFormat:(NSString *)dateFormat;

@end