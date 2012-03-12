#import <Cocoa/Cocoa.h>
#import <CoreServices/CoreServices.h>
#import <CalendarStore/CalendarStore.h>
#import <WebKit/WebKit.h>
#import <AppKit/AppKit.h>
#import <Quartz/Quartz.h>
#import <SystemConfiguration/SystemConfiguration.h>
#import <CoreAudio/CoreAudio.h>
#import <AudioToolbox/AudioServices.h>
#import "ChangeLogController.h"
#import "AboutController.h"
#import "PreferencesController.h"

@interface MainController : NSObject {
    NSUserDefaults * fDefaults;
    BOOL fQuitRequested;
    IBOutlet id outText;
	IBOutlet id window;
    IBOutlet NSPanel *fMainWindow;
    PreferencesController *myPreferencesController;
    ChangeLogController *myChangeLogController;
}

- (IBAction)update:(id)sender;
- (IBAction)Homepage:(id)sender;
- (IBAction)Issue:(id)sender;
- (IBAction)ChangeLog:(id)sender;
- (IBAction)showTheWindow:(id)pId;
- (IBAction)Donate:(id)sender;
- (IBAction)showPreferencesWindow:(id)sender;
- (void)jarvis;
//- (void)setVolume:(float)involume;

@end
 

