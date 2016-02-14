//
//  FirstViewController.h
//  WebView3
//
//  Created by MacBook on 15-09-05.
//  Copyright 2015 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface FirstViewController : UIViewController {
	IBOutlet UIWebView *BCITSAWeb;
    NSString *url;
}


@property (nonatomic, retain) IBOutlet UIWebView *BCITSAWeb;
@property (nonatomic, retain) NSString *url;
@end

