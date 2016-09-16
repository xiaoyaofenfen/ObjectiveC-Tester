//
//  MyDate.h
//  ObjectiveC Tester
//
//  Created by liangfen on 16/9/15.
//  Copyright © 2016年 Imagination Studio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyDate : NSObject

@property int year, month, day;

-(instancetype) init;
-(instancetype) initWithYear: (int) theYear andMonth: (int) theMonth andDay: (int) theDay;


-(MyDate*) dateUpdate: (int) theYear andMonth: (int) theMonth andDay: (int) theDay;
-(void) print;

@end
