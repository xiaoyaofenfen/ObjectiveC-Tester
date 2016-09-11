//
//  FractionComparison.m
//  ObjectiveC Tester
//
//  Created by liangfen on 16/9/11.
//  Copyright © 2016年 Imagination Studio. All rights reserved.
//

#import "FractionComparison.h"

@implementation Fraction(Comparison)
-(BOOL) isEqaulToMethod: (Fraction *) f
{
    [self reduce];
    [f reduce];

    return ((self.numerator == f.numerator) && (self.denominator == f.denominator));
}
-(int) compare: (Fraction *) f
{
    Fraction *result = [self subtract:f];

    if(result.denominator == 0)
    {
        return  0;
    }

    if(result.numerator == 0)
    {
        return 0;
    }
    else
    {
        double r = result.numerator / (double)result.denominator;

        if(r > 0)
        {
            return 1;
        }
        else
        {
            return -1;
        }
    }
}

-(BOOL) isEqualTo: (id) object
{
    return [self isEqaulToMethod:object];
}
-(BOOL) isLessThanOrEqualTo: (id) object
{
    return ([self compare:object] <= 0);
}
-(BOOL) isLessThan: (id) object
{
    return [self compare:object] < 0;
}
-(BOOL) isGreaterThan: (id) object
{
    return [self compare:object] > 0;
}
-(BOOL) isGreaterThanOrEqualTo: (id) object
{
    return [self compare:object] >= 0;
}
-(BOOL) isNotEqualTo: (id) object
{
    return ![self isEqual:object];
}

@end
