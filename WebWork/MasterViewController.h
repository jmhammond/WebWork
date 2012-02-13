//
//  MasterViewController.h
//  WebWork
//
//  Created by John Hammond on 2/12/12.
//  Copyright (c) 2012 The WeBWorK Project. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HomeworkTableViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) HomeworkTableViewController* homeworkViewController;
@property (retain, nonatomic) NSArray* courses_list;

@end
