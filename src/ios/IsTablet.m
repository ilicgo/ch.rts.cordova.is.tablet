/********* IsTablet.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>

@interface IsTablet : CDVPlugin {
  // Member variables go here.
}

- (void) isTabletDevice:(CDVInvokedUrlCommand*)command;
@end

@implementation IsTablet

- (void) isTabletDevice: (CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult;
    @try {
        if(UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsInt:1];
        }
        else {
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsInt:0];
        }
    }
    @catch (NSException *exception) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:exception.reason];
    }
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
