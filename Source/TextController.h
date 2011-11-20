#import <Cocoa/Cocoa.h>
#import <CoreServices/CoreServices.h>
#import <CalendarStore/CalendarStore.h>
#import <WebKit/WebKit.h>
#import <SystemConfiguration/SystemConfiguration.h>
#import <CoreAudio/CoreAudio.h>

@interface TextController : NSObject {
    IBOutlet id outText;
	IBOutlet id window;
}
- (IBAction)update:(id)sender;
- (IBAction)Homepage:(id)sender;
- (IBAction)Issue:(id)sender;
- (IBAction)ChangeLog:(id)sender;
- (void)jarvis;
- (void)setVolume:(float)involume;

NSSpeechSynthesizer *synth;
@end
 