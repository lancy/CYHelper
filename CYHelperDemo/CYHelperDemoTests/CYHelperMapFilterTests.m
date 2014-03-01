//
//  CYHelperArrayTests.m
//  CYHelperDemo
//
//  Created by Lancy on 2/3/14.
//  Copyright (c) 2014 GraceLancy. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSArray+CYHelper.h"
#import "NSSet+CYHelper.h"

@interface CYHelperMapFilterTests : XCTestCase

@end

@implementation CYHelperMapFilterTests

- (void)setUp
{
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
}

- (void)tearDown
{
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

- (void)testMapWithBlock {
    NSArray *arr = @[@"hello", @"world", @"this", @"is", @"a", @"test"];
    NSArray *correctArray = @[@5, @5, @4, @2, @1, @4];
    NSArray *result = [arr mapWithBlock:^id(id value) {
        return @([value length]);
    }];
    for (NSInteger i = 0; i < arr.count; i++) {
        XCTAssertEqualObjects(result[i], correctArray[i], @"map with block test faild.");
    }
    
    NSSet *set = [NSSet setWithArray:arr];
    NSSet *resultSet = [set mapWithBlock:^id(id value) {
        return @([value length]);
    }];
    NSSet *correctSet = [NSSet setWithArray:correctArray];
    for (id value in correctSet) {
        XCTAssertTrue([resultSet containsObject:value], @"map with block test faild");
    }
}

- (void)testFilterWithBlock {
    NSArray *arr = @[@"hello", @"world", @"this", @"is", @"a", @"test"];
    NSArray *correctArray = @[@"hello", @"world", @"this", @"test"];
    NSArray *result = [arr filterWithBlock:^BOOL(id value) {
        return [value length] < 3;
    }];
    for (NSInteger i = 0; i < correctArray.count; i++) {
        XCTAssertEqualObjects(result[i], correctArray[i], @"filter with block test faild.");
    }
    
    NSSet *set = [NSSet setWithArray:arr];
    NSSet *resultSet = [set filterWithBlock:^BOOL(id value) {
        return [value length] < 3;
    }];
    NSSet *correctSet = [NSSet setWithArray:correctArray];
    for (id value in correctSet) {
        XCTAssertTrue([resultSet containsObject:value], @"filter with block test faild");
    }
}

@end
