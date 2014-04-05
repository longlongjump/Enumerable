//
//  NSDictionary+Enumerable.m
//
//  Created by Ovchynnykov Eugene on 08.07.13.
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
