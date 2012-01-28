//
//  AboutController.h
//  Jarvis
//
//  Created by Gabriel Ulici on 11/28/11.
//  Copyright 2011 buHuHu Inc. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface AboutController : NSWindowController {
    IBOutlet NSTextField *jVersionField;
    IBOutlet NSTextView *fLicenseView;
    IBOutlet NSPanel *fLicenseSheet;
    IBOutlet NSButton *fLicenseCloseButton;
    IBOutlet NSButton *fLicenseButton;
}

//+ (AboutController *) aboutController;

- (IBAction)showLicense:(id)sender;
- (IBAction)hideLicense:(id)sender;
- (IBAction)buttonMe:(id)sender;
- (IBAction)buttonPhysicistjedi:(id)sender;

@end
