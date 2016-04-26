#import "BuildSettings.h"

@implementation BuildSettings

- (void)getValue:(CDVInvokedUrlCommand*)command {
	NSString* callbackId   = [command callbackId];
	NSDictionary *defaults = [[command arguments] objectAtIndex:0];

	NSMutableDictionary* mergedResult = [NSMutableDictionary dictionaryWithDictionary:defaults];
	NSDictionary *infoDictionary = [NSBundle mainBundle].infoDictionary;

	NSEnumerator *enumerator = [defaults keyEnumerator];
	id key;
	while((key = [enumerator nextObject])) {
		id infoValue = [infoDictionary objectForKey:key];
		if(infoValue != nil) {
			[mergedResult setObject:infoValue forKey:key];
		}
	}

	CDVPluginResult* result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:mergedResult];
	[self.commandDelegate sendPluginResult:result callbackId:callbackId];
}

@end
