//
//  FirstViewController.m
//  WebView3
//
//  Created by MacBook on 15-09-05.
//  Copyright 2015 __MyCompanyName__. All rights reserved.
//

#import "FirstViewController.h"
#import <MessageUI/MessageUI.h>

@implementation FirstViewController

@synthesize BCITSAWeb;
@synthesize url;
/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
	self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
	if (self) {
        // Custom initialization
    }
    return self;
}
*/
/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
 NSURL *bcitsaURL = [NSURL URLWithString:url];
 NSURLRequest *bcitsaRequest = [NSURLRequest	requestWithURL:bcitsaURL];
 BCITSAWeb.scalesPageToFit = YES;
 BCITSAWeb.frame=self.view.bounds;
 [BCITSAWeb loadRequest:bcitsaRequest];
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
