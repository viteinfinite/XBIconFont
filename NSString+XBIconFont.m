//
//  NSString+XBIconFont.m
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

#import "NSString+XBIconFont.h"

@implementation NSString (XBIconFont)

#pragma mark - Public API
+ (XBFontIcon)iconForIconName:(NSString *)string {
    NSDictionary *enums = [self enumDictionary];
    return [enums[string] integerValue];
}

+ (NSString *)stringForIconIdentifier:(XBFontIcon)value {
    return [NSString iconFontUnicodeStrings][value];
}

+ (NSString *)stringForIconName:(NSString *)identifier {
    return [self stringForIconIdentifier:[self iconForIconName:identifier]];
}


#pragma mark - Data Initialization
+ (NSArray *)iconFontUnicodeStrings {
    
    static NSArray *iconFontUnicodeStrings;
    
    static dispatch_once_t unicodeStringsOnceToken;
    dispatch_once(&unicodeStringsOnceToken, ^{
        
        iconFontUnicodeStrings = @[@"\uf095", @"\uf197", @"\uf198", @"\uf199", @"\uf19a", @"\uf19b", @"\uf19c", @"\uf19d", @"\uf19e", @"\uf19f", @"\uf1a0", @"\uf1a1", @"\uf1a2"];

    });
    
    return iconFontUnicodeStrings;
}

+ (NSDictionary *)enumDictionary {
    
	static NSDictionary *enumDictionary;
    
    static dispatch_once_t enumDictionaryOnceToken;
    dispatch_once(&enumDictionaryOnceToken, ^{
        
		NSMutableDictionary *tmp = [[NSMutableDictionary alloc] init];

        tmp[@"xbif-phone"]			= @(XBIFPhone);
        tmp[@"xbif-download"]		= @(XBIFDownload);
        tmp[@"xbif-share"]			= @(XBIFShare);
        tmp[@"xbif-contacts"]		= @(XBIFContacts);
        tmp[@"xbif-search"]			= @(XBIFSearch);
        tmp[@"xbif-bookmarks"]		= @(XBIFBookmarks);
        tmp[@"xbif-compose"]		= @(XBIFCompose);
        tmp[@"xbif-undo"]			= @(XBIFUndo);
        tmp[@"xbif-star"]			= @(XBIFStar);
        tmp[@"xbif-plus"]			= @(XBIFPlus);
        tmp[@"xbif-info"]			= @(XBIFInfo);
        tmp[@"xbif-left"]			= @(XBIFLeft);
        tmp[@"xbif-right"]			= @(XBIFRight);
        
		enumDictionary = tmp;
	});
    
    return enumDictionary;
}

@end
