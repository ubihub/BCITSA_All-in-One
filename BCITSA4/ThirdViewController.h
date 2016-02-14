//
//  ThirdViewController.h
//  WebView3
//
//  Created by MacBook on 15-09-05.
//  Copyright 2015 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ThirdViewController : UIViewController {
	IBOutlet UIWebView *BCITSAtwitter;
    NSString *url;
}


@property (nonatomic, retain) IBOutlet UIWebView *BCITSAtwitter;
@property (nonatomic, retain) NSString *url;
@end
