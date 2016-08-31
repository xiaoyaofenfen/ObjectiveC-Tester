//
//  Complex.m
//  ObjectiveC Tester
//
//  Created by liangfen on 16/8/31.
//  Copyright © 2016年 Imagination Studio. All rights reserved.
//

#import "Complex.h"

@implementation Complex

@synthesize real, image;

-(void) print
{
    NSLog(@"%d + %di", real, image);
}

-(Complex *) add: (Complex *) complexNum
{
    Complex *c = [Complex new];

    c.real = real + complexNum.real;
    c.image = image + complexNum.image;

    return c;
}

@end
