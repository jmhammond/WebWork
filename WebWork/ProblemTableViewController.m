//
//  ProblemTableViewController.m
//  WebWork
//
//  Created by John Hammond on 2/13/12.
//  Copyright (c) 2012 The WeBWorK Project. All rights reserved.
//

#import "ProblemTableViewController.h"

#import "DetailViewController.h"
#import "WebworkSOAPHandlerService.h"

@implementation ProblemTableViewController

@synthesize detailViewController = _detailViewController;
@synthesize course_name = _course_name;
@synthesize homework_name = _homework_name;
@synthesize problem_list;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        self.title = (self.homework_name) ? self.homework_name : @"Homework";
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

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    self.title = (self.homework_name) ? self.homework_name : @"Homework";
    
    
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{   
    // Create the service
	WebworkSOAPHandlerService* service = [WebworkSOAPHandlerService serviceWithUsername:@"" andPassword:@""];
	service.logging = YES;
	// service.username = @"username";
	// service.password = @"password";
    
    [service list_global_problems:self action:@selector(list_problemsHandler:) authenKey:@"123456789123456789" courseName:self.course_name setID:self.homework_name];
    
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

- (void) list_problemsHandler: (id) value {
    
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
    problem_list = [[(SoapArray*)value items] copy];
    [self.tableView reloadData];
    
    //    for (NSString* object in [result items]) {
    //        NSLog(object);
    //    }
	//NSLog(@"list_courses returned the value: %@", [result description]);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    if (problem_list) 
        return [problem_list count];
    else 
        return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    // Configure the cell...
    if (problem_list) {
        cell.textLabel.text = [problem_list objectAtIndex:[indexPath row]];
    } else {
        cell.textLabel.text = NSLocalizedString(@"Loading Problem List...", @"Loading Problem List...");
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
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
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

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
	    if (!self.detailViewController) {
	        self.detailViewController = [[[DetailViewController alloc] initWithNibName:@"DetailViewController_iPhone" bundle:nil] autorelease];
	    }
        [self.navigationController pushViewController:self.detailViewController animated:YES];
    }
}

@end
