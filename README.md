#CYHelper
## About
CYHelper is an Objective-C library for iOS developer. It try to provides all the useful features of iOS and wrap them to be easy-to-use API.
## What's new?
###1.1.2
* Easy to post and observe notification to default notification center.

###1.1.0 - 1.1.1
* Determind is iPhone or iPad
* Remove all subviews of view
* Perform block after delay
* Create UIColor With RGBHex
* Easy to access x, y, width, height, right, bottom, origin and size of UIView.

## Requirements
* iOS 5.0 or later
* support ARC

## Installation
* Use CocoaPods to install CYHelper.
* Or simply drag CYHelper folder to your project, and import "CYHelper.h". Otherwise you can also add individual componet of CYHelper, just import corresponding head files.

## Features
* Easy to access subarray
* Convert date to string with date format
* JSON Serialization with NSData, NSString, NSDictionary
* MD5 generation with NSData, NSString
* Word Tokenization with string.
* Singleton(sharedInstance Method) macro
* Runtime print call stack
* Check OS version, app version, device model
* Check whether device is jail broken
* Perform block after delay
* Create UIColor With RGBHex
* Easy to access x, y, width, height and size of UIView.
* Determind is iPhone or iPad
* Remove all subviews of view


## API List
### NSObject+CYNotification.h (NEW)
    - (void)postNotificationName:(NSString *)notificationName;
    - (void)postNotificationName:(NSString *)notificationName userInfo:(NSDictionary *)userInfo;
    - (void)observeNotificationName:(NSString *)notificationName selector:(SEL)selector;
    - (void)unObserveNotificationName:(NSString *)notificationName;

### NSObject + CYHelper.h (NEW)
    - (void)performBlock:(void (^)(void))block afterDelay:(NSTimeInterval)delay;
    
### UIColor + CYHelper.h (NEW)
    + (UIColor *)colorWithRGBHex:(UInt32)hex;
    + (UIColor *)colorWithRGBHex:(UInt32)hex alpha:(CGFloat)alpha;
    
### UIView + CYHelper.h (NEW)
    @property (nonatomic, readwrite) CGFloat x;
    @property (nonatomic, readwrite) CGFloat y;
    @property (nonatomic, readwrite) CGFloat width;
    @property (nonatomic, readwrite) CGFloat height;
    @property (nonatomic, readwrite) CGSize size;
    @property (nonatomic, readwrite) CGPoint origin;
    @property (nonatomic, readwrite) CGFloat bottom;
    @property (nonatomic, readwrite) CGFloat right;
    - (void)removeAllSubviews;


### NSArray + CYHelper.h
    - (NSArray *)subarrayFromIndex:(NSUInteger)index;
    - (NSArray *)subarrayToIndex:(NSUInteger)index;
### NSDate + CYHelper.h 
    // example: dateFormat:@"yyyy-MM-dd 'at' HH:mm";
    // formattedDateString: 2001-01-02 at 13:00
    - (NSString *)stringWithDateFormat:(NSString *)dateFormat;
### NSDictionary + CYHelper.h
    - (NSData *)jsonData;
    - (NSString *)jsonString;
### NSData + CYHelper.h
    - (NSData *)MD5;
    - (NSString *)MD5String;
    - (NSDictionary *)jsonObject;
### NSString + CYHelper.h
    - (NSDictionary *)jsonObject;
    - (NSString *)MD5String;
    - (NSArray *)arrayWithWordTokenize;
    - (NSString *)separatedStringWithSeparator:(NSString *)separator;
    
### CYSystemInfo.h (NEW)
    #define IOS6_OR_LATER	
    #define IOS5_OR_LATER	
    #define IOS4_OR_LATER
    #define IOS3_OR_LATER
    #define IS_IPHONE
    #define IS_IPAD
    
    + (NSString *)osVersion;
    + (NSString *)appVersion;
    
    + (NSString *)deviceModel;
    
    + (BOOL)isJailBroken;
    + (NSString *)jailBreaker;
    
### CYSingletonHelper.h
    #define AS_SINGLETON( __class )
    #define DEF_SINGLETON( __class )

### CYRuntimeHelper.h
    + (void)printCallStackWithCount:(NSUInteger)count;
    
## Contact Me
* [Follow my github](https://github.com/lancy)
* [Write an issue](https://github.com/lancy/CYHelper/issues)
* Send Email to me: lancy1014@gmail.com

## License
CYHelper is available under the MIT license.

Copyright © 2012 Lancy.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

