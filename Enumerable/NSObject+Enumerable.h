//
//  NSObject+Enumerable.h
//  Mamba
//
//  Created by Hellier on 08.07.13.
//  Copyright (c) 2013 Mamba. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Enumerable)
@property (readonly,nonatomic) BOOL isNull;
-(void)tap:(void(^)(id obj))block;
@end
