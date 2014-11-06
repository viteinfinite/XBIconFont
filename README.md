XBIconFont
===================

XBIconFont is just another icon font containing a (really) small subset of useful glyphs.

## Usage

First, make sure you have `xbiconfont.ttf` bundled in your project and that `UIAppFonts` key in the project's plist file contains a String item named `xbiconfont.ttf` 
Then add the `NSString+XBIconFont` category to the project.

	UILabel *label = [...]
	label.font = [UIFont fontWithName:kXBIconFontFamilyName size:20];
	
You can now use enums for all the different glyphs
	
	label.text = [NSString stringForIconName:XBIFStar];

or
	
	label.text = [NSString fontAwesomeIconStringForIconIdentifier:@"xbif-star"];

## Installation

XBIconFont is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "XBIconFont"

## XBIconFontImageView

XBIconFontImageView contains a new property called `defaultView` that is shown when the image is set to nil.
It is possible to use one the font-awesome icon as a default placeholder for an image view.

	XBIconFontImageView *imageView = [[XBIconFontImageView alloc] initWithFrame:CGRectMake(0.f, 0.f, 100.f, 100.f)];
    imageView.image = nil;
    [imageView setDefaultIconIdentifier:@"xbif-star"];

## License

This project uses the FontAwesome fix made by Pit Garbe that you can find at https://github.com/leberwurstsaft/FontAwesome-for-iOS Version 2.0 of the Font Awesome font, CSS, and LESS files are licensed under CC BY 3.0: http://creativecommons.org/licenses/by/3.0/ A mention of 'Font Awesome - http://fortawesome.github.com/Font-Awesome' in human-readable source code is considered acceptable attribution (most common on the web). If human readable source code is not available to the end user, a mention in an 'About' or 'Credits' screen is considered acceptable (most common in desktop or mobile software)