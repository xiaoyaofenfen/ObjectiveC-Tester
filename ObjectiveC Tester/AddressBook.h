//
//  AddressBook.h
//  ObjectiveC Tester
//
//  Created by liangfen on 16/9/16.
//  Copyright © 2016年 Imagination Studio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

@interface AddressBook : NSObject
@property (nonatomic, copy) NSString *bookName;
@property (nonatomic, strong) NSMutableArray *book;

-(instancetype) initWithName: (NSString *) theName;
-(instancetype) init;

-(void) addCard: (AddressCard *) card;
-(void) removeCard: (AddressCard *) card;
-(int) entries;
-(void) list;
-(AddressCard *) lookup: (NSString *) theName;
-(void) sort;


@end
