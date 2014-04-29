//
//  UIDevice+CYHardware.m
//  DeviceHardware
//
//  Created by Chenyu Lan on 4/29/14.
//  Copyright (c) 2014 Fenbi.inc. All rights reserved.
//

#import "UIDevice+CYHardware.h"
#import <sys/sysctl.h>

@implementation UIDevice (CYHardware)

- (NSString *)getSystemInfoByName:(char *)typeSpecifier {
    size_t size;
    sysctlbyname(typeSpecifier, NULL, &size, NULL, 0);

    char *answer = malloc(size);
    sysctlbyname(typeSpecifier, answer, &size, NULL, 0);

    NSString *results = [NSString stringWithCString:answer encoding: NSUTF8StringEncoding];

    free(answer);
    return results;
}

- (NSString *)platform {
    return [self getSystemInfoByName:"hw.machine"];
}

- (NSString *)hwmodel {
    return [self getSystemInfoByName:"hw.model"];
}

- (CYPlatformType)platformType {
    NSString *platform = [self platform];
    
    if ([platform isEqualToString:@"iPhone1,1"])    return CYPlatformTypeiPhone2G;
    if ([platform isEqualToString:@"iPhone1,2"])    return CYPlatformTypeiPhone3G;
    if ([platform isEqualToString:@"iPhone2,1"])    return CYPlatformTypeiPhone3GS;
    if ([platform isEqualToString:@"iPhone3,1"])    return CYPlatformTypeiPhone4;
    if ([platform isEqualToString:@"iPhone3,2"])    return CYPlatformTypeiPhone4;
    if ([platform isEqualToString:@"iPhone3,3"])    return CYPlatformTypeiPhone4;
    if ([platform isEqualToString:@"iPhone4,1"])    return CYPlatformTypeiPhone4s;
    if ([platform isEqualToString:@"iPhone5,1"])    return CYPlatformTypeiPhone5;
    if ([platform isEqualToString:@"iPhone5,2"])    return CYPlatformTypeiPhone5;
    if ([platform isEqualToString:@"iPhone5,3"])    return CYPlatformTypeiPhone5c;
    if ([platform isEqualToString:@"iPhone5,4"])    return CYPlatformTypeiPhone5c;
    if ([platform isEqualToString:@"iPhone6,1"])    return CYPlatformTypeiPhone5s;
    if ([platform isEqualToString:@"iPhone6,2"])    return CYPlatformTypeiPhone5s;
    if ([platform isEqualToString:@"iPod1,1"])      return CYPlatformTypeiPodTouch1G;
    if ([platform isEqualToString:@"iPod2,1"])      return CYPlatformTypeiPodTouch2G;
    if ([platform isEqualToString:@"iPod3,1"])      return CYPlatformTypeiPodTouch3G;
    if ([platform isEqualToString:@"iPod4,1"])      return CYPlatformTypeiPodTouch4G;
    if ([platform isEqualToString:@"iPod5,1"])      return CYPlatformTypeiPodTouch5G;
    if ([platform isEqualToString:@"iPad1,1"])      return CYPlatformTypeiPad1G;
    if ([platform isEqualToString:@"iPad2,1"])      return CYPlatformTypeiPad2;
    if ([platform isEqualToString:@"iPad2,2"])      return CYPlatformTypeiPad2;
    if ([platform isEqualToString:@"iPad2,3"])      return CYPlatformTypeiPad2;
    if ([platform isEqualToString:@"iPad2,4"])      return CYPlatformTypeiPad2;
    if ([platform isEqualToString:@"iPad2,5"])      return CYPlatformTypeiPadMini1G;
    if ([platform isEqualToString:@"iPad2,6"])      return CYPlatformTypeiPadMini1G;
    if ([platform isEqualToString:@"iPad2,7"])      return CYPlatformTypeiPadMini1G;
    if ([platform isEqualToString:@"iPad3,1"])      return CYPlatformTypeiPad3;
    if ([platform isEqualToString:@"iPad3,2"])      return CYPlatformTypeiPad3;
    if ([platform isEqualToString:@"iPad3,3"])      return CYPlatformTypeiPad3;
    if ([platform isEqualToString:@"iPad3,4"])      return CYPlatformTypeiPad4;
    if ([platform isEqualToString:@"iPad3,5"])      return CYPlatformTypeiPad4;
    if ([platform isEqualToString:@"iPad3,6"])      return CYPlatformTypeiPad4;
    if ([platform isEqualToString:@"iPad4,1"])      return CYPlatformTypeiPadAir;
    if ([platform isEqualToString:@"iPad4,2"])      return CYPlatformTypeiPadAir;
    if ([platform isEqualToString:@"iPad4,3"])      return CYPlatformTypeiPadAir;
    if ([platform isEqualToString:@"iPad4,4"])      return CYPlatformTypeiPadMini2G;
    if ([platform isEqualToString:@"iPad4,5"])      return CYPlatformTypeiPadMini2G;
    if ([platform isEqualToString:@"iPad4,6"])      return CYPlatformTypeiPadMini2G;
    if ([platform isEqualToString:@"i386"])         return CYPlatformTypeSimulator;
    if ([platform isEqualToString:@"x86_64"])       return CYPlatformTypeSimulator;
    if ([platform hasPrefix:@"iPhone"])             return CYPlatformTypeUnknowniPhone;
    if ([platform hasPrefix:@"iPad"])               return CYPlatformTypeUnknowniPad;
    if ([platform hasPrefix:@"iPod"])               return CYPlatformTypeUnknowniPod;
    
    return CYPlatformTypeUnknown;
}

- (NSString *)platformString {
    switch ([self platformType]) {
        case CYPlatformTypeUnknown:             return @"Unknow";
        case CYPlatformTypeiPad1G:              return @"iPad 1G";
        case CYPlatformTypeiPad2:               return @"iPad 2";
        case CYPlatformTypeiPad3:               return @"iPad 3";
        case CYPlatformTypeiPad4:               return @"iPad 4";
        case CYPlatformTypeiPadAir:             return @"iPad Air";
        case CYPlatformTypeiPadMini1G:          return @"iPad Mini 1G";
        case CYPlatformTypeiPadMini2G:          return @"iPad Mini 2G";
        case CYPlatformTypeiPhone2G:            return @"iPhone 2G";
        case CYPlatformTypeiPhone3G:            return @"iPhone 3G";
        case CYPlatformTypeiPhone3GS:           return @"iPhone 3GS";
        case CYPlatformTypeiPhone4:             return @"iPhone 4";
        case CYPlatformTypeiPhone4s:            return @"iPhone 4s";
        case CYPlatformTypeiPhone5:             return @"iPhone 5";
        case CYPlatformTypeiPhone5c:            return @"iPhone 5c";
        case CYPlatformTypeiPhone5s:            return @"iPhone 5s";
        case CYPlatformTypeiPodTouch1G:         return @"iPod Touch 1G";
        case CYPlatformTypeiPodTouch2G:         return @"iPod Touch 2G";
        case CYPlatformTypeiPodTouch3G:         return @"iPod Touch 3G";
        case CYPlatformTypeiPodTouch4G:         return @"iPod Touch 4G";
        case CYPlatformTypeiPodTouch5G:         return @"iPod Touch 5G";
        case CYPlatformTypeAppleTV2G:           return @"Apple TV 2G";
        case CYPlatformTypeAppleTV3G:           return @"Apple TV 3G";
        case CYPlatformTypeSimulator:           return @"Simulator";
        case CYPlatformTypeUnknowniPhone:       return @"Unknown iPhone";
        case CYPlatformTypeUnknowniPod:         return @"Unknown iPod";
        case CYPlatformTypeUnknowniPad:         return @"Unknown iPad";
    }
    return nil;
}

@end
