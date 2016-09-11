//
//  FractionMathOps.m
//  ObjectiveC Tester
//
//  Created by liangfen on 16/9/11.
//  Copyright © 2016年 Imagination Studio. All rights reserved.
//

#import "FractionMathOps.h"

@implementation Fraction(MathOps)

-(Fraction *) invert
{
    if(self.denominator == 0)
    {
        return NULL;
    }

    Fraction *f = [Fraction new];
    f.numerator = self.denominator;
    f.denominator = self.numerator;

    return f;
}

@end
