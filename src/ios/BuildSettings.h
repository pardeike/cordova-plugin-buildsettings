#import <Cordova/CDV.h>

@interface BuildSettings : CDVPlugin

- (void)getValue:(CDVInvokedUrlCommand*)command;

- (void)getUserID:(CDVInvokedUrlCommand*)command;

@end
