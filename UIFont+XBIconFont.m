//
//  UIFont+FontAwesome.m
//  FontAwesome-iOS Demo
//
//  Created by Alex Usbergo on 1/16/13.
//  Copyright (c) 2013 Alex Usbergo. All rights reserved.
//

#import "UIFont+XBIconFont.h"
#import "NSString+XBIconFont.h"

@implementation UIFont (XBIconFont)

#pragma mark - Public API
+ (UIFont*)fontAwesomeFontOfSize:(CGFloat)size {
    return [UIFont fontWithName:kFontAwesomeFamilyName size:size];
}

@end
