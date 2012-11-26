//
//  CYHelperTests.m
//  CYHelperTests
//
//  Created by Lancy on 11/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CYHelperTests.h"
#import "NSData+CYHelper.h"

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
    [self NSDataHelperTest];
}

- (void)NSDataHelperTest
{
    NSString *string = @"The quick brown fox jumps over the lazy dog";
    NSData *data = [string dataUsingEncoding:NSUTF8StringEncoding];
    STAssertEqualObjects([data MD5String], @"9e107d9d372bb6826bd81d3542a419d6", @"NSData + Helper MD5String exception");
    
    string = @"";
    data = [string dataUsingEncoding:NSUTF8StringEncoding];
    STAssertEqualObjects([data MD5String], @"d41d8cd98f00b204e9800998ecf8427e", @"NSData + Helper MD5String exception");

}

@end
