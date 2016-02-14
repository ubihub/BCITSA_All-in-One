//
//  ForthViewController.m
//  BCITSA4
//
//  Created by James Kwon on 2015-12-15.
//  Copyright © 2015 ubihub@gmail.com. All rights reserved.
//
#import "ForthViewController.h"


@implementation ForthViewController

@synthesize webView;
@synthesize url;
#pragma mark -
#pragma mark Initialization

/*
 - (id)initWithStyle:(UITableViewStyle)style {
 // Override initWithStyle: if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
 self = [super initWithStyle:style];
 if (self) {
 // Custom initialization.
 }
 return self;
 }
 */


#pragma mark -
#pragma mark View lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    NSURL *bcitsaTwitterURL = [NSURL URLWithString:url];
    //    NSURL *bcitsaTwitterURL = [NSURL URLWithString:@"https://mobile.twitter.com/bcitsa"];
    NSURLRequest *bcitsaTwitterRequest = [NSURLRequest	requestWithURL:bcitsaTwitterURL];
    webView.scalesPageToFit = YES;
    webView.frame=self.view.bounds;
    [webView loadRequest:bcitsaTwitterRequest];
}


/*
 // Override to allow orientations other than the default portrait orientation.
 - (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
 // Return YES for supported orientations
 return (interfaceOrientation == UIInterfaceOrientationPortrait);
 }
 */

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    //    [super dealloc];
}

@end

