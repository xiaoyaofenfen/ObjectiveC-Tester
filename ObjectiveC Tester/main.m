//
//  main.m
//  ObjectiveC Tester
//
//  Created by liangfen on 16/8/28.
//  Copyright © 2016年 Imagination Studio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "Calculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Programing is fun!");


        Fraction *frac1 = [[Fraction alloc] init];
        [frac1 setNumerator:1];
        [frac1 setDenominator:3];
        [frac1 print];

        NSLog(@"The value of this fraction is : %d / %d", [frac1 numerator], [frac1 denominator]);



        Calculator *calc = [[Calculator alloc] init];
        [calc setAccumulator:0];
        [calc add:12.3];
        [calc multiply: 2.3];

        NSLog(@"The accumulator is: %f", [calc accumulator]);

    }
    return 0;
}
