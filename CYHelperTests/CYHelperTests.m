//
//  CYHelperTests.m
//  CYHelperTests
//
//  Created by Lancy on 11/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CYHelperTests.h"
#import "CYHelper.h"
#import <objc/runtime.h>

@implementation CYHelperTests

- (void)setUp
{
    [super setUp];
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testExample
{
    [self dataHelperTest];
    [self jsonHelperTest];
    [self dateHelperTest];
    [self arrayHelperTest];
    [self systemInfoTest];
    [self runtimeTest];
    [self stringTokenizeTest];
}

- (void)dataHelperTest
{
    NSString *string = @"The quick brown fox jumps over the lazy dog";
    NSData *data = [string dataUsingEncoding:NSUTF8StringEncoding];
    STAssertEqualObjects([data MD5String], @"9E107D9D372BB6826BD81D3542A419D6", @"NSData + Helper MD5String exception");
    STAssertEqualObjects([string MD5String], [data MD5String], @"NSString MD5String exception");
    
    string = @"";
    data = [string dataUsingEncoding:NSUTF8StringEncoding];
    STAssertEqualObjects([data MD5String], @"D41D8CD98F00B204E9800998ECF8427E", @"NSData + Helper MD5String exception");

}

- (void)jsonHelperTest
{
    NSDictionary* info = @{
        @"key1" : @"string",
        @"key2" : @[@"1", @"2", @"3"],
        @"key3" : @{
                        @"key4" : @"OK",
                        @"key5" : @"hello"
                }
    };
    NSString *dicToString = [info jsonString];
    NSDictionary *stringToDic = [dicToString jsonObject];
    NSData *dicToData = [info jsonData];
    NSDictionary *dataToDic = [dicToData jsonObject];

    STAssertEqualObjects(info, dataToDic, @"JSON helper exception");
    STAssertEqualObjects(info, stringToDic, @"JSON helper exception");
    STAssertEqualObjects(dataToDic, stringToDic, @"Json helper exception");
    
}

- (void)dateHelperTest
{
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:0];
    NSLog(@"%@", [date stringWithDateFormat:@"yyyy/MM/dd"]);
    STAssertEqualObjects([date stringWithDateFormat:@"yyyy/MM/dd"], @"1970/01/01", @"Date helper exception");
}

- (void)arrayHelperTest
{
    NSArray *array = @[@"1", @"2", @"3"];
    NSLog(@"%@", [array subarrayFromIndex:1]);
    NSLog(@"%@", [array subarrayToIndex:2]);
    NSArray *array2 = @[@"2", @"3"];
    NSArray *array3 = @[@"1", @"2"];
    
    STAssertEqualObjects([array subarrayFromIndex:1], array2, @"array helper exception");
    STAssertEqualObjects([array subarrayToIndex:2], array3, @"array helper exception");
}

- (void)systemInfoTest
{
    NSLog(@"OS Version = %@",[CYSystemInfo osVersion]);
    NSLog(@"App Version = %@", [CYSystemInfo appVersion]);
    NSLog(@"Device Model = %@", [CYSystemInfo deviceModel]);
}

- (void)runtimeTest
{
    static char overviewKey;
    NSArray *array = @[@"One", @"Two", @"Three"];
    NSString *overview = @"First three numbers";
    objc_setAssociatedObject (
                              array,
                              &overviewKey,
                              overview,
                              OBJC_ASSOCIATION_RETAIN
                              );
    
    NSString *associatedObject =
    (NSString *) objc_getAssociatedObject (array, &overviewKey);
    NSLog(@"associatedObject: %@", associatedObject);
    
    objc_setAssociatedObject (
                              array,
                              &overviewKey,
                              nil,
                              OBJC_ASSOCIATION_ASSIGN
                              );
    

}

- (void)stringTokenizeTest
{
    NSString *string = @"Love the way you lie";
    NSArray *array = [string arrayWithWordTokenize];
    NSLog(@"%@", array);
}

@end
