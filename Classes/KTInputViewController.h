//
//  KTInputViewController.h
//
//  Created by Benedikt on 22/03/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

@class KraftTraining;
@class KTOutputViewController;
@class KTInputTableViewController;

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface KTInputViewController : UIViewController <UITextFieldDelegate> {
    IBOutlet UITextField *maximumWeight;
    IBOutlet UISlider *slider;
	IBOutlet KTInputTableViewController *ktInputTableViewController;
	IBOutlet UITableView *radioButtonsView;
	KraftTraining *kt;
	KTOutputViewController *outputController;
	UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UITextField *maximumWeight;
@property (nonatomic, retain) IBOutlet UISlider *slider;
@property (nonatomic, retain) KraftTraining *kt;
@property (nonatomic, retain) IBOutlet KTOutputViewController *outputController;
@property (nonatomic, retain) IBOutlet KTInputTableViewController *ktInputTableViewController;
@property (nonatomic, retain) IBOutlet UITableView *radioButtonsView;
@property (nonatomic, retain) UINavigationController *navigationController;

- (IBAction)sliderChanged:(id)sender;
- (IBAction)calculateTraining;

@end
