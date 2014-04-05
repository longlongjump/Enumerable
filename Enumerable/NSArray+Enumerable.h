//
//  NSArray+Enumerable.h
//
//  Created by Ovchynnykov Eugene on 08.07.13.
//

#import <Foundation/Foundation.h>

@interface NSArray (Enumerable)

-(NSDictionary*)groupBy:(id(^)(id obj))block;
-(NSArray*)map:(id(^)(id obj))block;
-(void)each:(void(^)(id obj))block;
-(NSArray*)select:(BOOL(^)(id obj))block;
-(NSArray*)reject:(BOOL(^)(id obj))block;
-(id)detect:(BOOL(^)(id obj))block;
-(NSArray*)uniq;
-(NSArray*)sort;
-(NSArray*)sort:(NSString*)keypath;
-(NSArray*)sort:(NSString*)keypath ascending:(BOOL)ascending;
-(NSArray*)reverse;
-(NSArray*)flatten;

@property (readonly,nonatomic) id firstObject;
@end
