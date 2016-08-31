//
//  Fraction.h
//  ObjectiveC Tester
//
//  Created by liangfen on 16/8/28.
//  Copyright © 2016年 Imagination Studio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;

-(int) numerator;
-(int) denominator;

-(void) print;

@end
