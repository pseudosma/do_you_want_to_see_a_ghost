#import "AppDelegate.h"

@interface AppDelegate ()

@property (strong) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}

- (void) awakeFromNib
{
    if(![_qcView loadCompositionFromFile:[[NSBundle mainBundle] pathForResource:@"ghost_cam" ofType:@"qtz"]]) {
        NSLog(@"Could not load composition");
    }
}

- (void)windowWillClose:(NSNotification *)notification
{
    [NSApp terminate:self];
}

@end
