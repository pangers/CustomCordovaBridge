//
//  FileWriter.h
//  TestCordovaProj
//
//  Created by James Pang on 17/09/2015.
//
//

#import <Cordova/CDVPlugin.h>

@interface FileWriter : CDVPlugin

// This will return the file contents in a JSON object via the getFileContents utility method
- (void) cordovaGetFileContents:(CDVInvokedUrlCommand *)command;

// This will accept a String and call setFileContents to persist the String on to disk
- (void) cordovaSetFileContents:(CDVInvokedUrlCommand *)command;

- (void)bindListener:(CDVInvokedUrlCommand *)command;

- (void)reportEvent:(NSDictionary *)eventData;

#pragma mark - Util_Methods

// Pure native code to persist data
- (void) setFileContents:(NSString *)fileContents;

// Native code to load data from disk and return the String.
- (NSString *) getFileContents;

@end
