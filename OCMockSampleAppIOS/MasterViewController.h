//
//  MasterViewController.h
//  OCMockSampleAppIOS
//
//  Created by Matt Di Pasquale on 9/19/11.
//  Copyright (c) 2011 Diamond Dynasties, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;

@end
