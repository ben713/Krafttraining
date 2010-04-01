//
//  KrafttrainingAppDelegate.m
//  Krafttraining
//
//  Created by Benedikt on 22/03/10.
//  Copyright Apple Inc 2010. All rights reserved.
//

#import "KrafttrainingAppDelegate.h"
#import "KTInputViewController.h"

@implementation KrafttrainingAppDelegate

@synthesize window;
@synthesize ktInputViewController;
@synthesize navigationController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    

	// set navigation controller
	self.navigationController = [[UINavigationController alloc] init];
	self.navigationController.navigationBar.tintColor = [UIColor blackColor];
	
//	self.ktInputViewController = [[KTInputViewController alloc] initWithNibName:@"KTInputViewController" bundle:[NSBundle mainBundle]];
    // Override point for customization after application launch
	// add top level controller
	self.ktInputViewController = [[KTInputViewController alloc] init];
	self.ktInputViewController.navigationController = self.navigationController;
	self.ktInputViewController.title = @"Training Parameters";
	[self.navigationController pushViewController:self.ktInputViewController animated:NO];
//	UIView *inputView = [ktInputViewController view];
//	[window addSubview:inputView];
//	[inputView release];
//	inputView = nil;
	
	[window addSubview:self.navigationController.view];
	
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
	[ktInputViewController release];
	[navigationController release];
    [window release];
    [super dealloc];
}


@end
