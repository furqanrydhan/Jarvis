//
//  AboutController.m
//  Jarvis
//
//  Created by Gabriel Ulici on 11/28/11.
//  Copyright 2011 buHuHu Inc. All rights reserved.
//

#import "AboutController.h"


@implementation AboutController
- (id) init {
    
	if ( ! (self = [super initWithWindowNibName: @"About"]) ) {
		NSLog(@"init failed in AboutController");
		return nil;
	} // end if
	NSLog(@"init OK in AboutController");
	
	return self;
} // end init


- (void) awakeFromNib
{
   
    NSDictionary * info = [[NSBundle mainBundle] infoDictionary];
    [jVersionField setStringValue: [NSString stringWithFormat: @"%@ (%@)",
                                    [info objectForKey: @"CFBundleShortVersionString"], [info objectForKey: (NSString *)kCFBundleVersionKey]]];
    
    //size license button
    const CGFloat oldButtonWidth = NSWidth([fLicenseButton frame]);
    
    [fLicenseButton setTitle: NSLocalizedString(@"License", "About window -> license button")];
    [fLicenseButton sizeToFit];
    
    NSRect buttonFrame = [fLicenseButton frame];
    buttonFrame.size.width += 10.0;
    buttonFrame.origin.x -= NSWidth(buttonFrame) - oldButtonWidth;
    [fLicenseButton setFrame: buttonFrame];
 
}


- (void) windowWillClose: (id) sender
{
	
}


- (void)windowDidLoad {
	NSLog(@"AboutPanel did load");
    [[self window] center];
} // end windowDidLoad

- (IBAction)showLicense:(id)sender 
{
    NSString * licenseText = [NSString stringWithContentsOfFile: [[NSBundle mainBundle] pathForResource: @"COPYING" ofType: nil]
                                        usedEncoding: nil error: NULL];
    [fLicenseView setString: licenseText];
    [fLicenseCloseButton setTitle: NSLocalizedString(@"OK", "About window -> license close button")];
	
	[NSApp beginSheet: fLicenseSheet modalForWindow: [self window] modalDelegate: nil didEndSelector: nil contextInfo: nil];
    
}

- (IBAction)hideLicense:(id)sender 
{
    [fLicenseSheet orderOut: nil];
    [NSApp endSheet: fLicenseSheet];
}
@end