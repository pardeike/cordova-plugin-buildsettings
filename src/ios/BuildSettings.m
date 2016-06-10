#import "BuildSettings.h"

@implementation BuildSettings

static NSString * const kConfigurationKey = @"com.apple.configuration.managed";

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

- (void)getUserID:(CDVInvokedUrlCommand*)command {
	NSString* callbackId = [command callbackId];

	NSDictionary *serverConfig = [[NSUserDefaults standardUserDefaults] dictionaryForKey:kConfigurationKey];
	NSString *user = serverConfig[@"EnrollmentUser"];
	if(user == nil) {
		user = @"";
	}

	CDVPluginResult* result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:user];
	[self.commandDelegate sendPluginResult:result callbackId:callbackId];
}

@end
