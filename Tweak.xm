%hook SBLockScreenView

-(void)setMediaControlsHidden:(BOOL)arg1 forRequester:(id)hideControls {

    arg1 = TRUE;
    %orig(arg1, hideControls);
    
}

%end
