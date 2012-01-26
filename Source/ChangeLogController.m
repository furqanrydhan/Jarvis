//
//  ChangeLog.m
//  Jarvis
//
//  Created by Gabriel Ulici on 1/26/12.
//  Copyright (c) 2012 buHuHu Inc. All rights reserved.
//

#import "ChangeLogController.h"

@implementation ChangeLogController

- (id) init {
    
	if ( ! (self = [super initWithWindowNibName: @"ChangeLog"]) ) {
		NSLog(@"init failed in ChangeLogController");
		return nil;
	} // end if
	NSLog(@"init OK in ChangeLogController");
	
	return self;
} // end init


- (void) awakeFromNib
{
    NSString * changeText = [NSString stringWithContentsOfFile: [[NSBundle mainBundle] pathForResource: @"Changelog" ofType: nil]
                                                   usedEncoding: nil error: NULL];
    [fChangeLogView setString: changeText];

}

- (void) windowDidLoad {
	NSLog(@"ChangeLogPanel did load");
    // [[self window] center];
    [[self window] makeKeyAndOrderFront:self];
} // end windowDidLoad

- (void) windowWillClose: (id) sender
{
	//[fAboutBoxInstance release];
    //fAboutBoxInstance = nil;
}


@end
