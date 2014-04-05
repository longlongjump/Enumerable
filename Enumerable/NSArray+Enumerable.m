//
//  NSArray+Enumerable.m
//  Mamba
//
//  Created by Hellier on 07.06.13.
//  Copyright (c) 2013 Mamba. All rights reserved.
//

#import "NSArray+Enumerable.h"

@implementation NSArray (Enumerable)
-(NSDictionary*)groupBy:(id(^)(id obj))block
{
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    for (id obj in self)
    {
        id res = block(obj);
        NSMutableArray *array = dict[res];
        if (array == nil)
        {
            array = [NSMutableArray array];
            dict[res] = array;
        }
        
        [array addObject:obj];
    }
    return dict;
}

-(NSArray*)map:(id(^)(id obj))block
{
    NSMutableArray *array = [NSMutableArray arrayWithCapacity:self.count];
    for (id obj in self)
    {
        [array addObject:block(obj)];
    }
    return array;
}


-(NSArray*)select:(BOOL(^)(id obj))block
{
    NSMutableArray *array = [NSMutableArray arrayWithCapacity:self.count];
    for (id obj in self)
    {
        if (block(obj)) [array addObject:obj];
    }
    return array;
}

-(NSArray*)reject:(BOOL(^)(id obj))block
{
    NSMutableArray *array = [NSMutableArray arrayWithCapacity:self.count];
    for (id obj in self)
    {
        if (!block(obj)) [array addObject:obj];
    }
    return array;
}

-(id)detect:(BOOL(^)(id obj))block
{
    for (id obj in self)
    {
        if (block(obj))
        {
            return obj;
        }
    }
    return nil;
}

-(NSArray*)uniq
{
    return [[NSMutableSet setWithArray:self] allObjects];
}

-(NSArray*)sort
{
    return [self sortedArrayUsingSelector:@selector(compare:)];
}

-(NSArray*)sort:(NSString*)keypath
{
    return [self sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        return [[obj1 valueForKeyPath:keypath] compare:[obj2 valueForKeyPath:keypath]];
    }];
}


-(NSArray*)sort:(NSString*)keypath ascending:(BOOL)ascending
{
    return [self sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        return (ascending?1:-1) *[[obj1 valueForKeyPath:keypath] compare:[obj2 valueForKeyPath:keypath]];
    }];
}

-(NSArray*)reverse
{
    NSMutableArray *array = [NSMutableArray arrayWithCapacity:[self count]];
    NSEnumerator *enumerator = [self reverseObjectEnumerator];
    for (id element in enumerator) {
        [array addObject:element];
    }
    return array;
}

-(NSArray*)flatten
{
    NSMutableArray *res = [NSMutableArray array];
    for (id obj in self)
    {
        if ([obj isKindOfClass:[NSArray class]])
        {
            for (id inner_obj in obj)
            {
                [res addObject:inner_obj];
            }
        }
        else
        {
            [res addObject:obj];
        }
    }
    return res;
}

-(id)firstObject
{
    return self.count>0?self[0]:nil;
}


-(void)each:(void(^)(id obj))block
{
    for (id obj in self)
    {
        block(obj);
    }
}
@end
