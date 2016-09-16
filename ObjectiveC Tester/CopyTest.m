//
//  CopyTest.m
//  ObjectiveC Tester
//
//  Created by liangfen on 16/9/16.
//  Copyright © 2016年 Imagination Studio. All rights reserved.
//

#import "CopyTest.h"

@implementation CopyTest
-(void) runTest
{
    NSMutableString *mStr = [NSMutableString stringWithString:@"lf1206"];
    NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:mStr, @"name", @"12", @"age", nil];


    NSDictionary *newDic = [dic copy];
    NSMutableDictionary *mDic = [dic mutableCopy];
    [mDic[@"name"] appendString:@"LF"];

    NSLog(@"name = %@", dic[@"name"]);
    NSLog(@"name = %@", mDic[@"name"]);

}
@end
