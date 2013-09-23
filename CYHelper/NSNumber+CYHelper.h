//
//  NSNumber+CYHelper.h
//  CYHelper
//
//  Created by Lancy on 27/11/12.
//
//

#import <Foundation/Foundation.h>

@interface NSNumber (CYHelper)

// DO NOT USE THEM when you have perfomace problem.
// These method convert NSNumber to NSDecimalNumber to process the calculation.
// I provide these methods just for convenience.
// NSDecimal(C-level) is much faster than NSDecimalNumber, can be a better choice.
- (NSNumber *)addNumber:(NSNumber *)number;
- (NSNumber *)subNumber:(NSNumber *)number;
- (NSNumber *)mulNumber:(NSNumber *)number;
- (NSNumber *)divNumber:(NSNumber *)number;
- (NSNumber *)modNumber:(NSNumber *)number;

@end
