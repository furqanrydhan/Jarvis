//
//  PreferencesController.m
//  Jarvis
//
//  Created by Gabriel Ulici on 3/11/12.
//  Copyright (c) 2012 buHuHu Inc. All rights reserved.
//

#import "PreferencesController.h"

@interface PreferencesController ()

@end

@implementation PreferencesController
@synthesize fPreferenceView;

- (id) init {
    
	if ( ! (self = [super initWithWindowNibName: @"Preferences"]) ) {
		NSLog(@"init failed in PreferencesController");
		return nil;
	} // end if
	NSLog(@"init OK in PreferencesController");
	return self;
} // end init

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
}

- (void) awakeFromNib
{
    [fPreferenceView makeKeyAndOrderFront:nil];
}

- (void)windowDidLoad
{
    [super windowDidLoad];
    NSLog(@"ChangeLogPanel did load");
    [[self window] makeKeyAndOrderFront:self];
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

@end
