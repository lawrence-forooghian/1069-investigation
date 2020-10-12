//
//  MyObjCClass.m
//  Ably1069
//
//  Created by Lawrence Forooghian on 12/10/2020.
//

#import "MyObjCClass.h"
#import "MyObjCProtocol.h"
@import UIKit;

@implementation MyObjCClass

- (void)interrogateAppDelegate {
    const id sharedDelegate = UIApplication.sharedApplication.delegate;
    
    // prints "shared delegate: <SwiftUI.AppDelegate: 0x6000016a4840>"
    NSLog(@"shared delegate: %@", sharedDelegate);
    
    // indeed calls the method, printing "inside app delegate's myMethod"
    [sharedDelegate myMethod];
    
    // prints "shared delegate responds to myMethod"
    if ([sharedDelegate respondsToSelector:@selector(myMethod)]) {
        NSLog(@"shared delegate responds to myMethod");
    }
    
    // prints "shared delegate doesn't conform to MyObjCProtocol"
    if (![sharedDelegate conformsToProtocol:@protocol(MyObjCProtocol)]) {
        NSLog(@"shared delegate doesn't conform to MyObjCProtocol");
    }
    
    // shared delegate conforms to UIApplicationDelegate
    if ([sharedDelegate conformsToProtocol:@protocol(UIApplicationDelegate)]) {
        NSLog(@"shared delegate conforms to UIApplicationDelegate");
    }
}

@end
