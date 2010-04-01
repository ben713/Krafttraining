//
//  KrafttrainingAppDelegate.h
//  Krafttraining
//
//  Created by Benedikt on 22/03/10.
//  Copyright Apple Inc 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class KTInputViewController;

@interface KrafttrainingAppDelegate : NSObject <UIApplicationDelegate> {
	UIWindow *window;
	KTInputViewController *ktInputViewController;
	IBOutlet UINavigationController * navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) KTInputViewController *ktInputViewController;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end

