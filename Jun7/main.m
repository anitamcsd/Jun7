//
//  main.m
//  Jun7
//
//  Created by Anita Gupta on 6/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"

int main(int argc, char *argv[])
{
    int i = 10;
	NSLog(@"The value of i is %d.", i);
    
	CGFloat f = 3.14159;
	NSLog(@"The value of f is %g.", f);
    
	UIDevice *device = [UIDevice currentDevice];
	NSString *version = device.systemVersion;
	NSLog(@"Version of iOS: %@", version);	
    
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
