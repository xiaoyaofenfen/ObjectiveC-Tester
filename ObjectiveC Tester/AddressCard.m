//
//  AddressCard.m
//  ObjectiveC Tester
//
//  Created by liangfen on 16/9/16.
//  Copyright © 2016年 Imagination Studio. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard

@synthesize name, email;

-(instancetype) initName: (NSString*) theName andEmail: (NSString *) theEmail
{
    self = [super init];
    if(self)
    {
        [self setName:theName andEmail:theEmail];
    }
    
    return self;
}

-(void) setName:(NSString *) theName andEmail: (NSString *) theEmail
{

    self.name = theName;
    self.email = theEmail;
}

-(void) print
{
    NSLog(@"======================================================");
    NSLog(@"%@", [self description]);
    NSLog(@"======================================================");
}
-(NSString*) description
{
    return [NSString stringWithFormat:@"name = %@, email = %@", name, email];
}
-(BOOL) isEqual:(AddressCard *)object
{
    if(object)
    {
        return [name isEqualToString:object.name];
    }

    return NO;
}
-(NSComparisonResult) compareNames: (AddressCard *) obj
{
    return [name compare:obj.name];
}

-(id) copyWithZone:(NSZone *)zone
{
    AddressCard *card = [[AddressCard allocWithZone:zone] init];
    [card setName:self.name andEmail:self.email];
    return card;
}

-(void) encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:self.name forKey:@"AddressCard.Name"];
    [aCoder encodeObject:self.email forKey:@"AddressCard.Email"];
}

-(instancetype) initWithCoder:(NSCoder *)aDecoder
{
    self.name = [aDecoder decodeObjectForKey:@"AddressCard.Name"];
    self.email = [aDecoder decodeObjectForKey:@"AddressCard.Email"];
    return self;
}

@end
