//
//  ChangeLog.m
//  Jarvis
//
//  Created by Gabriel Ulici on 1/26/12.
//  Copyright (c) 2012 buHuHu Inc. All rights reserved.
//

#import "ChangeLogController.h"

@implementation ChangeLogController

@synthesize fChangeLogWebView;

- (id) init {
    
	if ( ! (self = [super initWithWindowNibName: @"ChangeLog"]) ) {
		NSLog(@"init failed in ChangeLogController");
		return nil;
	} // end if
	NSLog(@"init OK in ChangeLogController");
	return self;
} // end init

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
}


- (void) awakeFromNib
{
    [fChangeLogView makeKeyAndOrderFront:nil];
   // WebPreferences *prefs = [fChangeLogWebView preferences];
  //  [prefs _setLocalStorageDatabasePath:@"~/Library/Jarvis/LocalStorage"];
	NSString *resourcesPath = [[NSBundle mainBundle] resourcePath];
	NSString *htmlPath = [resourcesPath stringByAppendingString:@"/htdocs/relnotes.html"];
	[[fChangeLogWebView mainFrame] loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:htmlPath]]];
}

- (void) windowDidLoad {
	NSLog(@"ChangeLogPanel did load");
    // [[self window] center];
    [[self window] makeKeyAndOrderFront:self];
} // end windowDidLoad

- (void) windowWillClose: (id) sender
{
	[NSApp terminate:self];
    //[fAboutBoxInstance release];
    //fAboutBoxInstance = nil;
}


@end
