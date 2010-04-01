//
//  KTInputViewController.m
//
//  Created by Benedikt on 22/03/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "KTInputViewController.h"
#import "KTInputTableViewController.h"
#import "KTOutputViewController.h"
#import "KraftTraining.h"


@implementation KTInputViewController

@synthesize maximumWeight;
@synthesize slider;
@synthesize kt;
@synthesize outputController;
@synthesize ktInputTableViewController;
@synthesize radioButtonsView;
@synthesize navigationController;
@synthesize weightRange;


- (IBAction)sliderChanged:(id)sender {
    self.maximumWeight.text = [NSString stringWithFormat:@"%.0f", slider.value];
}

- (IBAction)calculateTraining {
	NSString *category;
	if (ktInputTableViewController.currentCategory != nil) {
		category = [[NSString alloc] initWithString:ktInputTableViewController.currentCategory];
	} else {
		category = [[NSString alloc] initWithString:@""];
	}

	// else category = @"kraftausdauer"
	NSNumber *inputNSNumber = [[NSNumber alloc] initWithFloat:[self.maximumWeight.text floatValue]]; 
	self.kt = [[KraftTraining alloc] init];
	self.weightRange = [[NSArray alloc] initWithArray:[self.kt calculate:inputNSNumber with:category]]; 
//	self.weightRange = [self.kt calculate:inputNSNumber with:category];
	[category release];
	category = nil;
	[inputNSNumber release];
	inputNSNumber = nil;


	// delegate to KTOutputViewController
	self.outputController.kt = self.kt;
	self.outputController.title = @"Commendations";
	[self.navigationController pushViewController:self.outputController animated:YES];
//	[self presentModalViewController:self.outputController animated:YES];
	
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	self.maximumWeight.text = [NSString stringWithFormat:@"80"];
}

/*
- (void)viewDidUnload {
	[super viewDidUnload];
	slider = nil;
}
*/
 
- (void)dealloc {
	[maximumWeight release];
	[slider release];
	[kt release];
	[outputController release];
	[ktInputTableViewController release];
	[radioButtonsView release];
	[navigationController release];
	[weightRange release];
	[super dealloc];
}

@end
