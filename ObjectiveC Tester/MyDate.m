//
//  MyDate.m
//  ObjectiveC Tester
//
//  Created by liangfen on 16/9/15.
//  Copyright © 2016年 Imagination Studio. All rights reserved.
//

#import "MyDate.h"

@implementation MyDate

@synthesize year, month, day;

-(id) init
{
    self = [super init];
    if(self)
    {

    }

    return self;
}
-(id) initWithYear: (int) theYear andMonth: (int) theMonth andDay: (int) theDay
{
    self = [self init];
    [self dateUpdate:theYear andMonth:theMonth andDay:theDay];
    return self;
}

-(MyDate*) dateUpdate: (int) theYear andMonth: (int) theMonth andDay: (int) theDay
{
    self.year = theYear;
    self.month = theMonth;
    self.day = theDay;

    return self;
}

-(void) print
{
    NSLog(@"MyDate: %d/%d/%d", self.year, self.month, self.day);
}
@end
