//
//  CYViewController.m
//  CYHelperDemo
//
//  Created by Lancy on 11/8/13.
//  Copyright (c) 2013 GraceLancy. All rights reserved.
//

#import "CYViewController.h"
#import "CYHelper.h"

@interface CYViewController ()
@property (strong, nonatomic) UIButton *button;

@end

@implementation CYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSNumber *numberA = @10;
    NSNumber *numberB = @3.2;
    NSLog(@"%@ + %@ = %@", numberA, numberB, [numberA addNumber:numberB]);
    NSLog(@"%@ - %@ = %@", numberA, numberB, [numberA subNumber:numberB]);
    NSLog(@"%@ * %@ = %@", numberA, numberB, [numberA mulNumber:numberB]);
    NSLog(@"%@ / %@ = %@", numberA, numberB, [numberA divNumber:numberB]);
    NSLog(@"%@ %% %@ = %@", numberA, numberB, [numberA modNumber:numberB]);
    NSNumber *sum = @(0);
    NSTimeInterval start = [[NSDate date] timeIntervalSince1970];
    for (int i = 0; i < 100000; i++) {
        sum = [sum addNumber:@(1)];
    }
    NSTimeInterval end = [[NSDate date] timeIntervalSince1970];
    NSLog(@"NSNumber add time: %f", end - start);
    int asum = 0;
    for (int i = 0; i < 100000; i++) {
        asum = asum + 1;
    }
    NSTimeInterval secondEnd = [[NSDate date] timeIntervalSince1970];
    NSLog(@"int add time: %f", secondEnd - end);
}

@end
