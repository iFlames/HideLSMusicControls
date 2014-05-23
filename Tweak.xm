%hook SBLockScreenView

-(void)setMediaControlsHidden:(BOOL)arg1 forRequester:(id)hideControls {

  NSString *settingsPath = @"/var/mobile/Library/Preferences/es.iflam.hidelsmusiccontrolsprefs.plist";
  NSMutableDictionary *prefs = [[NSMutableDictionary alloc] initWithContentsOfFile:settingsPath];

  BOOL enabled = [prefs objectForKey:@"enabled"] ? [[prefs objectForKey:@"enabled"] boolValue] : YES;

  if(enabled == YES) {
    arg1 = TRUE;
    %orig(arg1, hideControls);
  }

  else {
    %orig;
  }

}

%end
