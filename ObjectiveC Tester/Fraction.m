//
//  Fraction.m
//  ObjectiveC Tester
//
//  Created by liangfen on 16/8/28.
//  Copyright © 2016年 Imagination Studio. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
{
    int numerator;
    int denominator;
}


-(void) setNumerator: (int) n
{
    numerator = n;
}
-(void) setDenominator: (int) d
{
    denominator = d;
}

-(void) print
{
    NSLog(@"%d / %d", numerator, denominator);
}

@end
