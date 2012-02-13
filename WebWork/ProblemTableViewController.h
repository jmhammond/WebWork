//
//  ProblemTableViewController.h
//  WebWork
//
//  Created by John Hammond on 2/13/12.
//  Copyright (c) 2012 The WeBWorK Project. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface ProblemTableViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;
@property (strong, nonatomic) NSString* homework_name;
@property (nonatomic, retain) NSArray* problem_list;
@property (strong, nonatomic) NSString* course_name;

@end
