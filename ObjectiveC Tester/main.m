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
#import "FunctionLib.h"
#import "MyDate.h"

Fraction* sumOfFraction(Fraction **data, int count)
{
    Fraction *sum = [Fraction alloc];
    sum.numerator = 0;
    sum.denominator = 1;

    if(data)
    {
        for (int index = 0; index < count; index++) {
            sum = [sum add:*(data + index)];
        }
    }

    return sum;
}

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

        NSLog(@"the size of Fraction is: %lu", sizeof(frac1));


        Fraction *fdata[3] = {frac1, frac2, fracResult};
        Fraction *sum = sumOfFraction(&fdata, 3);
        NSLog(@"the sum of the fraction array is : %d/%d", sum.numerator, sum.denominator);

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


        float data[10];

        unsigned int index = 0;
        for (; index < 10; index++) {
            data[index] = rand() % 100 / 3.3;
        }

        float avg = calculateAvg(data, 10);
        NSLog(@"the average is : %.2f", avg);

        struct data
        {
            int year;
            int month;
            int day;
        };

        typedef struct data Date;
        Date todaysDate = {2016, 9, 10};
        NSLog(@"the date is : %d/%d/%d", todaysDate.year, todaysDate.month, todaysDate.day);

        MyDate *myDate = [MyDate new];
        [myDate dateUpdate:2016 andMonth:3 andDay:5];
        [myDate print];

        MyDate *myDate2 = [[MyDate alloc] initWithYear:2034 andMonth:12 andDay:12];
        [myDate2 print];


        void (^exchangeInt)(int *, int *) = ^(int *d1, int *d2){
            int t = *d1;
            *d1 = *d2;
            *d2 = t;
        };

        int d1 = 3, d2 = 9;
        NSLog(@"before d1 = %d, d2 = %d; after d1 = %d, d2 = %d", d1, d2, (exchangeInt(&d1, &d2), d1), d2);
        
    }
    return 0;
}
