//
//  KTInputTableViewController.h
//  Krafttraining
//
//  Created by Benedikt on 29/03/10.
//  Copyright 2010 Apple Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@class KTInputViewController;

@interface KTInputTableViewController : UITableViewController {
	NSArray *categories;
	UITableView *tableView;
	NSString *currentCategory;
}

@property (nonatomic, retain) IBOutlet UITableView *tableView;
@property (nonatomic, retain) NSArray *categories;
@property (nonatomic, retain) NSString *currentCategory;

@end
