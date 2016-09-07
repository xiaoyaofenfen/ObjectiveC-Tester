//
//  Complex.h
//  ObjectiveC Tester
//
//  Created by liangfen on 16/8/31.
//  Copyright © 2016年 Imagination Studio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject

@property int real, image;

-(id) initReal: (int) r andImage: (int) i;

-(void) print;

-(Complex *) add: (Complex *) complexNum;

@end
