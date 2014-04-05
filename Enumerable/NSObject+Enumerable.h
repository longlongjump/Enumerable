//
//  NSObject+Enumerable.h
//
//  Created by Ovchynnykov Eugene on 08.07.13.
//

#import <Foundation/Foundation.h>

@interface NSObject (Enumerable)
@property (readonly,nonatomic) BOOL isNull;
-(void)tap:(void(^)(id obj))block;
@end
