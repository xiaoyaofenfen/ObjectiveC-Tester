//
//  NSComparisonMethods.h
//  ObjectiveC Tester
//
//  Created by liangfen on 16/9/11.
//  Copyright © 2016年 Imagination Studio. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol NSComparisonMethods

-(BOOL) isEqualTo: (id) object;
-(BOOL) isLessThanOrEqualTo: (id) object;
-(BOOL) isLessThan: (id) object;
-(BOOL) isGreaterThan: (id) object;
-(BOOL) isGreaterThanOrEqualTo: (id) object;
-(BOOL) isNotEqualTo: (id) object;

@optional
-(BOOL) doesContain: (id) object;
-(BOOL) isLike: (NSString *) object;
-(BOOL) isCaseInsensitiveLike: (NSString *) object;

@end
