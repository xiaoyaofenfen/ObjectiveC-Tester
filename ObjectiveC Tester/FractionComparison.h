//
//  FractionComparison.h
//  ObjectiveC Tester
//
//  Created by liangfen on 16/9/11.
//  Copyright © 2016年 Imagination Studio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "NSComparisonMethods.h"

@interface Fraction(Comparison)<NSComparisonMethods>
-(BOOL) isEqaulToMethod: (Fraction *) f;
-(int) compare: (Fraction *) f;
@end
