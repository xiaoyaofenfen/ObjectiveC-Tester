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

-(id) initReal: (int) r andImage: (int) i
{
    self = [super init];
    if(self)
    {
        self.real = r;
        self.image = i;
    }

    return self;
}

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
