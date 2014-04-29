//
//  UIDevice+CYHardware.h
//  DeviceHardware
//
//  Created by Chenyu Lan on 4/29/14.
//  Copyright (c) 2014 Fenbi.inc. All rights reserved.
//
//  platform info come from the iphone wiki
//  http://theiphonewiki.com/wiki/Models

#import <UIKit/UIKit.h>

typedef enum {
    CYPlatformTypeUnknown,
    
    CYPlatformTypeiPad1G,
    CYPlatformTypeiPad2,
    CYPlatformTypeiPad3,
    CYPlatformTypeiPad4,
    CYPlatformTypeiPadAir,
    
    CYPlatformTypeiPadMini1G,
    CYPlatformTypeiPadMini2G,
    
    CYPlatformTypeiPhone2G,
    CYPlatformTypeiPhone3G,
    CYPlatformTypeiPhone3GS,
    CYPlatformTypeiPhone4,
    CYPlatformTypeiPhone4s,
    CYPlatformTypeiPhone5,
    CYPlatformTypeiPhone5c,
    CYPlatformTypeiPhone5s,
    
    CYPlatformTypeiPodTouch1G,
    CYPlatformTypeiPodTouch2G,
    CYPlatformTypeiPodTouch3G,
    CYPlatformTypeiPodTouch4G,
    CYPlatformTypeiPodTouch5G,
    
    CYPlatformTypeAppleTV2G,
    CYPlatformTypeAppleTV3G,
    
    CYPlatformTypeSimulator,
    
    CYPlatformTypeUnknowniPhone,
    CYPlatformTypeUnknowniPod,
    CYPlatformTypeUnknowniPad
    
} CYPlatformType;

@interface UIDevice (CYHardware)

- (NSString *)platform;
- (CYPlatformType)platformType;
- (NSString *)platformString;

@end
