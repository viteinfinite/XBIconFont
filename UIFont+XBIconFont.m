//
//  UIFont+XBIconFont.m
//  XBIconFont Demo
//
//  Created by Alex Usbergo on 1/16/13.
//  Copyright (c) 2013 Alex Usbergo. All rights reserved.
//

#import "UIFont+XBIconFont.h"
#import "NSString+XBIconFont.h"

@implementation UIFont (XBIconFont)

#pragma mark - Public API

+ (UIFont*)iconFontOfSize:(CGFloat)size
{
    return [UIFont fontWithName:kXBIconFontFamilyName size:size];
}

@end
