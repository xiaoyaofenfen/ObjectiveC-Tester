//
//  Calculator.h
//  ObjectiveC Tester
//
//  Created by liangfen on 16/8/29.
//  Copyright © 2016年 Imagination Studio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

-(void) setAccumulator: (double) value;
-(void) clear;
-(double) accumulator;

-(double) add: (double) value;
-(double) subtract: (double) value;
-(double) multiply: (double) value;
-(double) divide: (double) value;

-(double) changeSign;
-(double) reciprocal;
-(double) xSquared;

-(double) memoryClear;
-(double) memoryStore;
-(double) memoryRecall;
-(double) memoryAdd: (double) value;
-(double) memorySubtract: (double) value;

@end
