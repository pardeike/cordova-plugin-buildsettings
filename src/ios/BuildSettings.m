#import "BuildSettings.h"

@implementation BuildSettings

- (void)getValue:(CDVInvokedUrlCommand*)command {
	NSString* callbackId   = [command callbackId];
	NSString* key          = [[command arguments] objectAtIndex:0];
	NSString* defaultValue = [[command arguments] objectAtIndex:1];

	NSString *value = "test";

	CDVPluginResult* result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:value];
	[self.commandDelegate sendPluginResult:result callbackId:callbackId];
}

@end
