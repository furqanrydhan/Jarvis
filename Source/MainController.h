#import <Cocoa/Cocoa.h>
#import <CoreServices/CoreServices.h>
#import <CalendarStore/CalendarStore.h>
#import <WebKit/WebKit.h>
#import <AppKit/AppKit.h>
#import <SystemConfiguration/SystemConfiguration.h>
#import <CoreAudio/CoreAudio.h>
#import <AudioToolbox/AudioServices.h>
#import "PreferencesController.h"
#import "ChangeLogController.h"
#import "AboutController.h"

@interface MainController : NSObject {
    IBOutlet id outText;
	IBOutlet id window;
    IBOutlet NSPanel *fMainWindow;
//    AboutController *myAboutController;
    PreferencesController *myPreferencesController;
    ChangeLogController *myChangeLogController;
}

- (IBAction)update:(id)sender;
- (IBAction)Homepage:(id)sender;
- (IBAction)Issue:(id)sender;
- (IBAction)ChangeLog:(id)sender;
- (IBAction)showPreferencesWindows:(id)sender;
- (void)jarvis;
//- (void)setVolume:(float)involume;
- (IBAction)showTheWindow:(id)pId;

@end
 