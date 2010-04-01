//
//  KraftTraining.h
//  Krafttraining
//
//  Created by Benedikt on 25/03/10.
//  Copyright 2010 Apple Inc. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface KraftTraining : NSObject {
	NSNumber *maximumWeight;
	NSNumber *minWeightOfRange;
	NSNumber *maxWeightOfRange;
	NSString *category;
	NSNumber *minIteration;
	NSNumber *maxIteration;
	NSString *speed;
}

@property (nonatomic, copy) NSNumber *maximumWeight;
@property (nonatomic, copy) NSNumber *minWeightOfRange;
@property (nonatomic, copy) NSNumber *maxWeightOfRange;
@property (nonatomic, copy) NSString *category;
@property (nonatomic, retain) NSNumber *minIteration;
@property (nonatomic, retain) NSNumber *maxIteration;
@property (nonatomic, retain) NSString *speed;

- (id)init;
- (float) getPercent:(float)basicValue with:(float)percentage;
- (NSArray *) calculate:(NSNumber *)maximumWeight with:(NSString *)category;

@end
