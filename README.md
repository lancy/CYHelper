#CYHelper
## About
CYHelper is an Objective-C library for iOS developers. It's try to provides all the useful features of iOS and wrap them to be easy-to-use API.
## Requirements
* iOS 5.0 or later
* support ARC

## Installation
Simply drag CYHelper folder to your project, and import "CYHelper.h". Otherwise you can also add individual componet of CYHelper, just import corresponding head files.


## Features
* Easy to access subarray
* Convert date to string with date format
* JSON Serialization with NSData, NSString, NSDictionary
* MD5 generation with NSData, NSString
* Word Tokenization with string.
* Singleton(sharedInstance Method) macro
* Runtime print call stack
* Check OS version, app version, device model, UUID
* Check whether device is jail broken

## API List
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
    
### CYSystemInfo.h
    #define IOS6_OR_LATER	
    #define IOS5_OR_LATER	
    #define IOS4_OR_LATER
    #define IOS3_OR_LATER
    
    + (NSString *)osVersion;
    + (NSString *)appVersion;
    
    + (NSString *)deviceModel;
    + (NSString *)deviceUUID NS_DEPRECATED_IOS(2_0, 6_0);;
    
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

