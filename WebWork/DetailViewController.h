//
//  DetailViewController.h
//  WebWork
//
//  Created by John Hammond on 2/12/12.
//  Copyright (c) 2012 The WeBWorK Project. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (strong, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end
