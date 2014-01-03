//int _skipFrequencyHooked;
BOOL _skipEnabledHooked;

%hook RadioStation

- (void)setSkipFrequency:(int)arg1 {
//// 'Hook' the variable
//_skipFrequencyHooked = MSHookIvar<int>(self, "skipFrequency");
//// The name of the hooked variable does not need to be the same
//_skipFrequencyHooked = 99;

//Set original skip frequency to 99
NSLog(@"setSkipFrequency1");
%orig(99);
NSLog(@"setSkipFrequency2");

}

- (void)setSkipEnabled:(BOOL)arg1 {
// 'Hook' the variable
_skipEnabledHooked = MSHookIvar<BOOL>(self, "skipEnabled");
// The name of the hooked variable does not need to be the same
_skipEnabledHooked = YES;
NSLog(@"setEnabled1");
%orig(YES);
NSLog(@"setEnabled2");

}

//- (void)setSkipIdentifier:(id)arg1 {
//%orig(nil);
//}

- (void)setSkipTimestamps:(id)arg1 {
%orig(nil);
}

%end