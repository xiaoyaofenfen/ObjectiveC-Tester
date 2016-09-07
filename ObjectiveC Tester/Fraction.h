//
//  Fraction.h
//  ObjectiveC Tester
//
//  Created by liangfen on 16/8/28.
//  Copyright © 2016年 Imagination Studio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property int numerator, denominator;

-(void) print: (BOOL) showReduce;
-(void) reduce;
-(int) invokeCountOfAdd;

-(Fraction *) add: (Fraction *) f;
-(Fraction *) subtract: (Fraction *) f;
-(Fraction *) multiply: (Fraction *) f;
-(Fraction *) divide: (Fraction *) f;

@end
