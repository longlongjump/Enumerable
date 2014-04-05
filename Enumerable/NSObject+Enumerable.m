//
//  NSObject+Enumerable.m
//
//  Created by Ovchynnykov Eugene on 08.07.13.
//

#import "NSObject+Enumerable.h"

@implementation NSObject (Enumerable)
-(void)tap:(void(^)(id obj))block
{
    block(self);
}

-(BOOL)isNull
{
    return self == (id)[NSNull null];
}
@end
