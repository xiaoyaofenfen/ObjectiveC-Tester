//
//  Fraction.m
//  ObjectiveC Tester
//
//  Created by liangfen on 16/8/28.
//  Copyright © 2016年 Imagination Studio. All rights reserved.
//

#import "Fraction.h"

static int gInvokeCountOfAdd = 0; // 只允许本文件访问的全局变量

@implementation Fraction

@synthesize numerator, denominator;

-(void) print: (BOOL) showReduce;
{
    Fraction *f = [Fraction new];
    f.numerator = numerator;
    f.denominator = denominator;
    if(showReduce)
    {
        [f reduce];
    }
    NSLog(@"%d / %d", f.numerator, f.denominator);
}

-(int) invokeCountOfAdd
{
    return gInvokeCountOfAdd;
}

-(void) reduce
{
    int u = numerator;
    int v = denominator;
    int temp = -1;;

    if(v != 0)
    {
        while (temp != 0) {
            temp = u % v;
            u = v;
            v = temp;
        }
    }

    numerator /= u;
    denominator /= u;
}

// a / b + c / d = (ad + cb) / bd
-(Fraction *) add: (Fraction *) f
{
    gInvokeCountOfAdd++;

    Fraction *result = [Fraction new];

    result.numerator = numerator * f.denominator + f.numerator * denominator;
    result.denominator = f.denominator * denominator;
    [result reduce];

    return result;
}

// a / b - c / d = (ad - cb) / bd
-(Fraction *) subtract: (Fraction *) f
{
    Fraction *result = [Fraction new];
    result.numerator = numerator * f.denominator - f.numerator * denominator;
    result.denominator = f.denominator * denominator;
    [result reduce];

    return result;
}

// (a / b) * (c / d) = ac / bd
-(Fraction *) multiply: (Fraction *) f
{
    Fraction *result = [Fraction new];

    result.numerator = f.numerator * numerator;
    result.denominator = f.denominator * denominator;
    [result reduce];

    return result;
}

// (a / b) / (c / d) = ad / bc
-(Fraction *) divide: (Fraction *) f
{
    Fraction *result = [Fraction new];

    result.numerator = numerator * f.denominator;
    result.denominator = denominator * f.numerator;
    [result reduce];

    return result;
}


@end
