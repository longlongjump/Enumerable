//
//  NSDictionary+Enumerable.m
//  Mamba
//
//  Created by Hellier on 21.08.13.
//  Copyright (c) 2013 Mamba. All rights reserved.
//

#import "NSDictionary+Enumerable.h"

@implementation NSDictionary (Enumerable)
-(NSDictionary*)merge:(NSDictionary*)dict
{
    NSMutableDictionary *res = [[NSMutableDictionary alloc] initWithDictionary:self];
    for (id key in dict)
    {
        res[key] = dict[key];
    }
    return res;
}
@end
