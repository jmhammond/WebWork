//
//  HomeworkTableViewController.m
//  WebWork
//
//  Created by John Hammond on 2/12/12.
//  Copyright (c) 2012 The WeBWorK Project. All rights reserved.
//

#import "HomeworkTableViewController.h"
#import "WebworkSOAPHandlerService.h"
#import "ProblemTableViewController.h"

@implementation HomeworkTableViewController

@synthesize problemTableViewController = _problemTableViewController;
@synthesize course_name = _course_name;
@synthesize homework_list;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = (self.course_name) ? self.course_name : @"Homework";
        if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
            self.clearsSelectionOnViewWillAppear = NO;
            self.contentSizeForViewInPopover = CGSizeMake(320.0, 600.0);
        }
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidAppear:(BOOL)animated {
    // Create the service
	WebworkSOAPHandlerService* service = [WebworkSOAPHandlerService serviceWithUsername:@"" andPassword:@""];
	service.logging = YES;
	// service.username = @"username";
	// service.password = @"password";
	
    
    // [service hello:self action:@selector(none)];
    // [service list_global_sets:self action:@selector(list_coursesHandler:) authenKey:@"123456789123456789" courseName:@"Math_1300_Spring_2012"]; 
    
    [service list_global_sets:self action:@selector(list_homeworkHandler:) authenKey:@"123456789123456789" courseName:self.course_name];
    

}

- (void)viewWillAppear:(BOOL)animated
{
    self.title = (self.course_name) ? self.course_name : @"Homework";
    
    
    [super viewWillAppear:animated];
}

- (void) list_homeworkHandler: (id) value {
    
	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}
    
	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
    
    
	// Do something with the ArrayOfString* result
    //   SoapArray* result = (SoapArray*)value;
    homework_list = [[(SoapArray*)value items] copy];
    [self.tableView reloadData];
    
    //    for (NSString* object in [result items]) {
    //        NSLog(object);
    //    }
	//NSLog(@"list_courses returned the value: %@", [result description]);
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

// Customize the number of sections in the table view.
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (homework_list) 
        return [homework_list count];
    else 
        return 1;
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
        if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        }
    }
    
    // Configure the cell.
    
    if (homework_list) {
        cell.textLabel.text = [homework_list objectAtIndex:[indexPath row]];
    } else {
        cell.textLabel.text = NSLocalizedString(@"Loading Homework List...", @"Loading Homework List...");
    }
    
    return cell;
}

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source.
 [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
 }   
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
	    if (!self.problemTableViewController) {
	        self.problemTableViewController = [[[ProblemTableViewController alloc] initWithStyle:UITableViewStylePlain] autorelease];
	    }
        [self.problemTableViewController setHomework_name:[homework_list objectAtIndex:[indexPath row]]];
        [self.problemTableViewController setCourse_name:self.course_name];
        [self.navigationController pushViewController:self.problemTableViewController animated:YES];
    }
}


@end
