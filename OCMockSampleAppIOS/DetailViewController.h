//
//  DetailViewController.h
//  OCMockSampleAppIOS
//
//  Created by Matt Di Pasquale on 9/19/11.
//  Copyright (c) 2011 Diamond Dynasties, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (strong, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end
