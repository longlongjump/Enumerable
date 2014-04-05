//
//  NSObject+Enumerable.m
//  Mamba
//
//  Created by Hellier on 08.07.13.
//  Copyright (c) 2013 Mamba. All rights reserved.
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
