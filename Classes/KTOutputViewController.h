//
//  KTOutputViewController.h
//  Krafttraining
//
//  Created by Benedikt on 26/03/10.
//  Copyright 2010 Apple Inc. All rights reserved.
//

@class KraftTraining;

#import <UIKit/UIKit.h>


@interface KTOutputViewController : UIViewController {
	IBOutlet UITextField *maximumWeight;
	IBOutlet UITextField *minOfRange;
	IBOutlet UITextField *maxOfRange;
	IBOutlet UITextField *category;
	KraftTraining *kt;
	IBOutlet UITextField *minIteration;
	IBOutlet UITextField *maxIteration;
	IBOutlet UITextField *speed;
}

@property (nonatomic, retain) IBOutlet UITextField *maximumWeight;
@property (nonatomic, retain) IBOutlet UITextField *minOfRange;
@property (nonatomic, retain) IBOutlet UITextField *maxOfRange;
@property (nonatomic, retain) IBOutlet UITextField *category;
@property (nonatomic, retain) KraftTraining *kt;
@property (nonatomic, retain) IBOutlet UITextField *minIteration;
@property (nonatomic, retain) IBOutlet UITextField *maxIteration;
@property (nonatomic, retain) IBOutlet UITextField *speed;

@end
