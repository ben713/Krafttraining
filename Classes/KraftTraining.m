//
//  KraftTraining.m
//  Krafttraining
//
//  Created by Benedikt on 25/03/10.
//  Copyright 2010 Apple Inc. All rights reserved.
//

#import "KraftTraining.h"


@implementation KraftTraining

@synthesize maximumWeight;
@synthesize minWeightOfRange;
@synthesize maxWeightOfRange;
@synthesize category;
@synthesize minIteration;
@synthesize maxIteration;
@synthesize speed;

- (id)init {
	if (self = [super init]) {
	}
	return self;
}

- (float)getPercent:(float)basicValue with:(float)percentage {
	return (basicValue / 100) * percentage;
}

- (void)calculate:(NSNumber *)maximumWeightLocal with:(NSString *)categoryLocal {
	self.maximumWeight = maximumWeightLocal;
	self.category = categoryLocal;
	float categoryMinPercent = 0.0;
	float categoryMaxPercent = 0.0;
	
	if (self.category == @"maximalkraft_mq_langsam") {
		categoryMinPercent = 50.0;
		categoryMaxPercent = 70.0;
		self.minIteration = [NSNumber numberWithInt:8];
		self.maxIteration = [NSNumber numberWithInt:12];
		self.speed = @"slow";
	} else if (self.category == @"maximalkraft_mq_schnell") {
		categoryMinPercent = 70.0;
		categoryMaxPercent = 85.0;
		self.minIteration = [NSNumber numberWithInt:5];
		self.maxIteration = [NSNumber numberWithInt:12];
		self.speed = @"fast";
	} else if (self.category == @"maximalkraft_intra") {
		categoryMinPercent = 85.0;
		categoryMaxPercent = 100.0;
		self.minIteration = [NSNumber numberWithInt:1];
		self.maxIteration = [NSNumber numberWithInt: 5];
		self.speed = @"fast";
	} else {
		// @"kraftausdauer"
		self.category = @"kraftausdauer";
		categoryMinPercent = 30.0;
		categoryMaxPercent = 50.0;
		self.minIteration = [NSNumber numberWithInt:20];
		self.maxIteration = [NSNumber numberWithInt:25];
		self.speed = @"slow";
	}
	
//	self.iteration = [[NSArray alloc] initWithObjects:[NSNumber numberWithInt:minIteration], 
//					  [NSNumber numberWithInt:maxIteration], 
//					  nil];
	
	float minRangeWeight = [self getPercent:[self.maximumWeight floatValue] with:categoryMinPercent];
	float maxRangeWeight = [self getPercent:[self.maximumWeight floatValue] with:categoryMaxPercent];
	
	self.minWeightOfRange = [NSNumber numberWithFloat:minRangeWeight];
//	NSValue *minRangeWeightAsNSValue = self.minWeightOfRange;
	self.maxWeightOfRange = [NSNumber numberWithFloat:maxRangeWeight];
//	NSValue *maxRangeWeightAsNSValue = self.maxWeightOfRange;
//	NSArray *weightRange = [NSArray arrayWithObjects: minRangeWeightAsNSValue, maxRangeWeightAsNSValue, nil];
//	[minRangeWeightAsNSValue release];
//	minRangeWeightAsNSValue = nil;
//	[maxRangeWeightAsNSValue release];
//	maxRangeWeightAsNSValue = nil;
	
//	return weightRange;
}

- (void) dealloc {
	[self.maximumWeight release];
	[self.category release];
	[super dealloc];
}

@end
