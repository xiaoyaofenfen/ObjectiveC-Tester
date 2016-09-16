//
//  AddressBook.m
//  ObjectiveC Tester
//
//  Created by liangfen on 16/9/16.
//  Copyright © 2016年 Imagination Studio. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook
@synthesize bookName, book;

-(instancetype) initWithName: (NSString *) theName
{
    self = [super init];
    if(self)
    {
        self.bookName = theName;
        self.book = [NSMutableArray new];
    }

    return self;
}
-(instancetype) init
{
    return [self initWithName:@"NoName"];
}

-(void) addCard: (AddressCard *) card
{
    [book addObject:card];
}
-(void) removeCard: (AddressCard *) card
{
    [book removeObject:card];
}

-(int) entries
{
    return (int)[book count];
}
-(void) list
{
    NSLog(@"======================== content of %@ with %d object ========================", bookName, [self entries]);

    for(AddressCard *card in book)
    {
        NSLog(@"%-20s   %-32s", [card.name UTF8String], [card.email UTF8String]);
    }
    NSLog(@"================================================================");
}

-(AddressCard *) lookup: (NSString *) theName
{
    for(AddressCard *card in book)
    {
        if([card.name caseInsensitiveCompare:theName] == NSOrderedSame)
        {
            return card;
        }
    }

    return nil;
}

-(void) sort
{
    [book sortUsingComparator:^(id obj1, id obj2){
        return [obj1 compareNames: obj2];
    }];
}


@end
