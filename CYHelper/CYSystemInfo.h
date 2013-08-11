//
//  CYSystemInfo.h
//  CYHelper
//
//  Created by Lancy on 26/11/12.
//
//

#import <Foundation/Foundation.h>

#define IOS6_OR_LATER	( [[[UIDevice currentDevice] systemVersion] compare:@"6.0"] != NSOrderedAscending )
#define IOS5_OR_LATER	( [[[UIDevice currentDevice] systemVersion] compare:@"5.0"] != NSOrderedAscending )
#define IOS4_OR_LATER	( [[[UIDevice currentDevice] systemVersion] compare:@"4.0"] != NSOrderedAscending )
#define IOS3_OR_LATER	( [[[UIDevice currentDevice] systemVersion] compare:@"3.0"] != NSOrderedAscending )

@interface CYSystemInfo : NSObject

+ (NSString *)osVersion;
+ (NSString *)appVersion;

+ (NSString *)deviceModel;
+ (NSString *)deviceUUID NS_DEPRECATED_IOS(2_0, 6_0);;

+ (BOOL)isJailBroken;
+ (NSString *)jailBreaker;

@end

