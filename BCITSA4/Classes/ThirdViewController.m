//
//  ThirdViewController.m
//  WebView3
//
//  Created by MacBook on 15-09-05.
//  Copyright 2015 __MyCompanyName__. All rights reserved.
//

#import "ThirdViewController.h"


@implementation ThirdViewController

@synthesize BCITSAtwitter;

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
	NSURL *bcitsaTwitterURL = [NSURL URLWithString:@"https://mobile.twitter.com/bcitsa"];
	NSURLRequest *bcitsaTwitterRequest = [NSURLRequest	requestWithURL:bcitsaTwitterURL];
	[BCITSAtwitter loadRequest:bcitsaTwitterRequest];
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
    [super dealloc];
}

@end

