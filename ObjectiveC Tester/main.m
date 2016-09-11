//
//  main.m
//  ObjectiveC Tester
//
//  Created by liangfen on 16/8/28.
//  Copyright © 2016年 Imagination Studio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "FractionMathOps.h"
#import "FractionComparison.h"
#import "Calculator.h"
#import "Complex.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Programing is fun!");

        typedef enum {Sunday, Monday, Tuesday, Wendesday, Thursday, Friday, Saturday} Day;

        Day today = Wendesday;
        NSLog(@"today is : %u", today);

        typedef Fraction *FractionObj;

        FractionObj frac1 = [[Fraction alloc] init];
        frac1.numerator = 1;
        frac1.denominator = 4;
//        [frac1 setNumerator:1];
//        [frac1 setDenominator:3];
        [frac1 print:NO];

        Fraction *frac2 = [Fraction new];
        frac2.numerator = 3;
        frac2.denominator = 5;

        Fraction *fracResult = [frac1 add:frac2];
        NSLog(@"%d / %d + %d / %d = %d / %d",
              [frac1 numerator], [frac1 denominator],
              frac2.numerator, frac2.denominator,
              fracResult.numerator, fracResult.denominator);

        Fraction *t = [Fraction new];
        t.numerator = 2;
        t.denominator = 4;
        [t print:YES];
        [t print:NO];

        //[frac1 add:frac2];
        NSLog(@"the add function invoked count : %d", [frac1 invokeCountOfAdd]);

        Fraction *f = [frac1 invert];
        [f print:YES];


        NSLog(@"%d/%d compare %d/%d is: %d", frac1.numerator, frac1.denominator,
              frac2.numerator, frac2.denominator,
              [frac1 compare:frac2]);

        id<NSComparisonMethods> fcm = frac2;
        NSLog(@"%d/%d isLessThanOrEqualTo %d/%d is: %d", frac1.numerator, frac1.denominator,
              frac2.numerator, frac2.denominator,
              [frac1 isLessThanOrEqualTo:fcm]);


        Calculator *calc = [[Calculator alloc] init];
        [calc setAccumulator:0];
        [calc add:12.3];
        [calc multiply: 2.3];

        NSLog(@"The accumulator is: %f", [calc accumulator]);

        int num = 0;
//        scanf("%d", &num);
        NSLog(@"the number is : %d", num);


        Complex *c1 = [Complex new];
        Complex *c2 = [Complex new];
        Complex *c3 = [Complex new];

        c1.real = 3;
        c1.image = 5;

        c2.real = 4;
        c2.image = 5;

        c3 = [c1 add:c2];

        [c3 print];

        c3 = [[Complex alloc] initReal:2 andImage:4];
        [c3 print];


    }
    return 0;
}
