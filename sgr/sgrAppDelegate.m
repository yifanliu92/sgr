//
//  sgrAppDelegate.m
//  sgr
//
//  Created by Liu Yifan on 11-7-14.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "sgrAppDelegate.h"
#import "TestBedViewController.h"


@implementation sgrAppDelegate

@synthesize window=_window;

- (IBAction)wh:(id)sender 
{

}

- (IBAction)lwh:(id)sender {
}
- (IBAction)ub:(id)sender {
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    //self.window.rootViewController=self.viewController;
    TestBedViewController* myController = [[TestBedViewController alloc] initWithDepth: 3];
    UINavigationController* navController = [[UINavigationController alloc] initWithRootViewController:myController];
    [myController release];
    self.window.rootViewController = navController;
    [self.window makeKeyAndVisible];
    return YES;
}
 


@end
