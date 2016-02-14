//
//  ForthViewController.h
//  BCITSA4
//
//  Created by James Kwon on 2015-12-15.
//  Copyright © 2015 ubihub@gmail.com. All rights reserved.
//


#import <UIKit/UIKit.h>


@interface ForthViewController : UIViewController {
    IBOutlet UIWebView *webView;
    NSString *url;
}


@property (nonatomic, retain) IBOutlet UIWebView *webView;
@property (nonatomic, retain) NSString *url;
@end
