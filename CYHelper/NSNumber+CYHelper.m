//
//  NSNumber+CYHelper.m
//  CYHelper
//
//  Created by Lancy on 27/11/12.
//
//

#import "NSNumber+CYHelper.h"

@implementation NSNumber (CYHelper)

- (NSDecimalNumber *)decimalNumber
{
    if ([self isKindOfClass:[NSDecimalNumber class]]) {
        return (NSDecimalNumber *)self;
    } else {
        return [NSDecimalNumber decimalNumberWithDecimal:[self decimalValue]];
    }
}

- (NSNumber *)addNumber:(NSNumber *)number
{
    NSDecimalNumber *decimalNumber = [self decimalNumber];
    NSDecimalNumber *aNumber = [number decimalNumber];
    return [decimalNumber decimalNumberByAdding:aNumber];
}

- (NSNumber *)subNumber:(NSNumber *)number
{
    NSDecimalNumber *decimalNumber = [self decimalNumber];
    NSDecimalNumber *aNumber = [number decimalNumber];
    return [decimalNumber decimalNumberBySubtracting:aNumber];
}

- (NSNumber *)mulNumber:(NSNumber *)number
{
    NSDecimalNumber *decimalNumber = [self decimalNumber];
    NSDecimalNumber *aNumber = [number decimalNumber];
    return [decimalNumber decimalNumberByMultiplyingBy:aNumber];
}

- (NSNumber *)divNumber:(NSNumber *)number
{
    NSDecimalNumber *decimalNumber = [self decimalNumber];
    NSDecimalNumber *aNumber = [number decimalNumber];
    return [decimalNumber decimalNumberByDividingBy:aNumber];
}

- (NSNumber *)modNumber:(NSNumber *)divisor
{
    NSDecimalNumber *decimalNumber = [self decimalNumber];
    NSDecimalNumber *decimalDivisor = [divisor decimalNumber];
    NSRoundingMode roundingMode = (decimalNumber.floatValue < 0 ^ decimalDivisor.floatValue < 0) ? NSRoundUp : NSRoundDown;
    NSDecimalNumberHandler *rounding = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:roundingMode
                                                                                              scale:0
                                                                                   raiseOnExactness:NO
                                                                                    raiseOnOverflow:NO
                                                                                   raiseOnUnderflow:NO
                                                                                raiseOnDivideByZero:NO];
    // divide and get the remainder
    NSDecimalNumber *quotient = [decimalNumber decimalNumberByDividingBy:decimalDivisor withBehavior:rounding];
    NSDecimalNumber *subtract = [quotient decimalNumberByMultiplyingBy:decimalDivisor];
    
    NSDecimalNumber *modulo = [decimalNumber decimalNumberBySubtracting:subtract];
    if (decimalNumber.floatValue < 0) {
        NSDecimalNumber *negOne = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:0 isNegative:YES];
        return [decimalNumber decimalNumberByMultiplyingBy:negOne];
    } else {
        return modulo;
    }
}

@end
