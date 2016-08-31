//
//  Calculator.m
//  ObjectiveC Tester
//
//  Created by liangfen on 16/8/29.
//  Copyright © 2016年 Imagination Studio. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator
{
    double accumulator;
    double memory;
}

-(void) setAccumulator: (double) value
{
    accumulator = value;
}
-(void) clear
{
    accumulator = 0;
}
-(double) accumulator
{
    return accumulator;
}

-(double) add: (double) value
{
    accumulator += value;
    return accumulator;
}
-(double) subtract: (double) value
{
    accumulator -= value;
    return accumulator;
}
-(double) multiply: (double) value
{
    accumulator *= value;
    return accumulator;
}
-(double) divide: (double) value
{
    if(value != 0.0)
    {
        accumulator /= value;
    }

    return accumulator;
}

-(double) changeSign
{
    accumulator = -accumulator;
    return accumulator;
}
-(double) reciprocal
{
    if(accumulator == 0.0)
    {
        accumulator = 0;

    }
    else
    {
        accumulator = 1 / accumulator;
    }

    return accumulator;
}
-(double) xSquared
{
    accumulator *= accumulator;

    return accumulator;
}

-(double) memoryClear
{
    memory = 0;
    return memory;
}
-(double) memoryStore
{
    memory = accumulator;
    return memory;
}
-(double) memoryRecall
{
    accumulator = memory;
    return accumulator;
}
-(double) memoryAdd: (double) value
{
    memory += value;
    return memory;
}
-(double) memorySubtract: (double) value
{
    memory -= value;
    return memory;
}

@end
