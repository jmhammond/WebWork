//
//  HomeworkTableViewController.h
//  WebWork
//
//  Created by John Hammond on 2/12/12.
//  Copyright (c) 2012 The WeBWorK Project. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface HomeworkTableViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;
@property (retain, nonatomic) NSArray* homeworkArray;
@property (strong, nonatomic) NSString* course_name;

@end
