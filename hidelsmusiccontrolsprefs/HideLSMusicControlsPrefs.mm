#import <Preferences/Preferences.h>

@interface HideLSMusicControlsPrefsListController: PSListController {
}
@end

@implementation HideLSMusicControlsPrefsListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"HideLSMusicControlsPrefs" target:self] retain];
	}
	return _specifiers;
}
@end

// vim:ft=objc
