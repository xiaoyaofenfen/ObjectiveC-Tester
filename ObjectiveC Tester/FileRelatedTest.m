//
//  FileRelatedTest.m
//  ObjectiveC Tester
//
//  Created by liangfen on 16/9/16.
//  Copyright © 2016年 Imagination Studio. All rights reserved.
//

#import "FileRelatedTest.h"

@implementation FileRelatedTest

-(void) runTest
{
    NSString *filePath = @"/Users/liangfen/Downloads/iTunes12.5.1.dmg";
    NSFileManager *fm = [NSFileManager defaultManager];

    NSDictionary<NSString *,id> *attrs = [fm attributesOfItemAtPath:filePath error:nil];
    if(attrs)
    {
        NSLog(@"file size: %@", (attrs[@"NSFileSize"]));
    }

    NSLog(@"the home dir of the Mac: %@", NSHomeDirectory());
}
@end
