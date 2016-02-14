//
//  SecondViewController.h
//  WebView3
//
//  Created by MacBook on 15-09-05.
//  Copyright 2015 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface SecondViewController : UIViewController {
	IBOutlet UIWebView *BCITSAfacebook;
    NSString *url;
}


@property (nonatomic, retain) IBOutlet UIWebView *BCITSAfacebook;
@property (nonatomic, retain) NSString *url;
@end
