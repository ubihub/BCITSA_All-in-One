//
//  SingleViewController.m
//  BCITSA4
//
//  Created by James Kwon on 2015-12-26.
//  Copyright © 2015 ubihub@gmail.com. All rights reserved.
//


#import "SingleViewController.h"
#import <MessageUI/MessageUI.h>

@implementation SingleViewController

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
- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
//    NSURL *urls = [[request URL] absoluteURL];
//    [[UIApplication sharedApplication] openURL:urls];
    
    if ([[[request URL] scheme] isEqual:@"tel"]) {
        [[UIApplication sharedApplication] openURL:[request URL]];
        return NO;
    } else
        if ([[[request URL] scheme] isEqual:@"mailto"] ) {
            [[UIApplication sharedApplication] openURL:[request URL]];
            
            //        if ([MFMailComposeViewController canSendMail]) {
            //            // create mail composer object
            //            MFMailComposeViewController *mailer = [[MFMailComposeViewController alloc] init];
            //
            //            // make this view the delegate
            //            mailer.mailComposeDelegate = self;
            //
            //            // set recipient
            //            [mailer setToRecipients:[NSArray arrayWithObject:urls]];
            //
            //            // generate message body
            //            NSString *body = @"";
            //
            //            // add to users signature
            //            [mailer setMessageBody:body isHTML:NO];
            //
            //            // present user with composer screen
            //            [self presentModalViewController:mailer animated:YES];
            //
            //        }
            
            return NO;
        }
    return YES;
}
/*
 // Implement loadView to create a view hierarchy programmatically, without using a nib.
 - (void)loadView {
 }
 */

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
    [BCITSAWeb setDelegate:self];
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
