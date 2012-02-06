//
//  PreferencesController.m
//  Jarvis
//
//  Created by Gabriel Ulici on 11/28/11.
//  Copyright 2011 buHuHu Inc. All rights reserved.
//

#import "PreferencesController.h"

@implementation PreferencesController
- (id) init {
    
	if ( ! (self = [super initWithWindowNibName: @"Preferences"]) ) {
		NSLog(@"init failed in PreferencesController");
		return nil;
	} // end if
	NSLog(@"init OK in PreferencesController");
	
	return self;
} // end init


- (void) awakeFromNib
{
    [fPreferencesView makeKeyAndOrderFront:nil];
}

- (void) windowDidLoad {
	NSLog(@"PreferencePanel did load");
    // [[self window] center];
    [[self window] makeKeyAndOrderFront:nil];
} // end windowDidLoad

- (void) windowWillClose: (id) sender
{
	//[fAboutBoxInstance release];
    //fAboutBoxInstance = nil;
}



@end