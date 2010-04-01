    //
//  KTOutputViewController.m
//  Krafttraining
//
//  Created by Benedikt on 26/03/10.
//  Copyright 2010 Apple Inc. All rights reserved.
//

#import "KTOutputViewController.h"
#import "KraftTraining.h"

@implementation KTOutputViewController

@synthesize maximumWeight;
@synthesize minOfRange;
@synthesize maxOfRange;
@synthesize category;
@synthesize kt;
@synthesize minIteration;
@synthesize maxIteration;
@synthesize speed;

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
//	self.maximumWeight.text = self.kt.maximumWeight.stringValue;
//	self.minOfRange.text = self.kt.minWeightOfRange.stringValue;
//	self.maxOfRange.text = self.kt.maxWeightOfRange.stringValue;
//	self.category.text = self.kt.category;
//	NSLog(@"KTOutputController viewDidLoad");
}


- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
	self.maximumWeight.text = self.kt.maximumWeight.stringValue;
	self.minOfRange.text = self.kt.minWeightOfRange.stringValue;
	self.maxOfRange.text = self.kt.maxWeightOfRange.stringValue;
	self.speed.text = self.kt.speed;
	self.minIteration.text = self.kt.minIteration.stringValue;
	self.maxIteration.text = self.kt.maxIteration.stringValue;
	
	if (self.kt.category == @"maximalkraft_mq_langsam") {
		self.category.text = [[NSString alloc] initWithString:@"ms muscle cross-section (slow)"];
	} else if (self.kt.category == @"maximalkraft_mq_schnell") {
		self.category.text = @"ms muscle cross-section (fast)";
	} else if (self.kt.category == @"maximalkraft_intra") {
		self.category.text = @"ms intra muscular";
	} else {
		self.category.text = @"aerobic strength endurance";
	}
//	self.category.text = self.kt.category;
//	NSLog(@"KTOutputController viewWillAppear");
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}


- (void)viewDidUnload {
	[super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
	self.maximumWeight = nil;
	self.minOfRange = nil;
	self.maxOfRange = nil;
	self.category = nil;
	self.kt = nil;
//	[self.view removeFromSuperview];
}


/*
- (void)viewDidDisappear:(BOOL)animated {
	[super viewDidDisappear:animated];
	self.maximumWeight = nil;
}
*/

- (void)dealloc {
	[maximumWeight release];
	[minOfRange release];
	[maxOfRange release];
	[category release];
	[kt release];
    [super dealloc];
}


@end
