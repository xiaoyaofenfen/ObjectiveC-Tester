//
//  AddressCard.h
//  ObjectiveC Tester
//
//  Created by liangfen on 16/9/16.
//  Copyright © 2016年 Imagination Studio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject<NSCopying, NSCoding>

@property(copy, nonatomic) NSString *name, *email;

-(instancetype) initName: (NSString*) theName andEmail: (NSString *) theEmail;
-(void) setName:(NSString *) theName andEmail: (NSString *) theEmail;

-(void) print;
-(NSString*) description;
-(BOOL) isEqual:(AddressCard *)object;
-(NSComparisonResult) compareNames: (AddressCard *) obj;
@end
