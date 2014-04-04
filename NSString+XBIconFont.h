//
//  NSString+XBIconFont.h
//
//  Copyright (c) 2012 Alex Usbergo. All rights reserved.
//
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//

#import <Foundation/Foundation.h>

static NSString *const kXBIconFontFamilyName = @"XBIconFont";

/**
 @abstract XBIconFont Icons.
 */
typedef NS_ENUM(NSInteger, XBFontIcon) {
    XBIFPhone,
    XBIFDownload,
    XBIFShare,
    XBIFContacts,
    XBIFSearch,
    XBIFBookmarks,
    XBIFCompose,
    XBIFUndo,
    XBIFStar
};



@interface NSString (XBIconFont)

/**
 @abstract Returns the correct enum for an icon.
 */
+ (XBFontIcon)iconFontEnumForIconIdentifier:(NSString *)string;

/**
 @abstract Returns the character associated to the icon enum passed as argument
 */
+ (NSString *)iconFontIconStringForEnum:(XBFontIcon)value;

/* 
 @abstract Returns the character associated to the identifier.
 */
+ (NSString *)iconFontIconStringForIconIdentifier:(NSString *)identifier;

@end
