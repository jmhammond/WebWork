//
//  HomeworkTableViewController.h
//  WebWork
//
//  Created by John Hammond on 2/12/12.
//  Copyright (c) 2012 The WeBWorK Project. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ProblemTableViewController;

@interface HomeworkTableViewController : UITableViewController

@property (strong, nonatomic) ProblemTableViewController* problemTableViewController;
@property (retain, nonatomic) NSArray* homework_list;
@property (strong, nonatomic) NSString* course_name;

@end
