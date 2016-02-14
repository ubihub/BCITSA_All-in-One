//
//  SingleViewContoller.h
//  BCITSA4
//
//  Created by James Kwon on 2015-12-26.
//  Copyright © 2015 ubihub@gmail.com. All rights reserved.
//
#import <UIKit/UIKit.h>


@interface SingleViewController : UIViewController {
    IBOutlet UIWebView *BCITSAWeb;
    NSString *url;
}


@property (nonatomic, retain) IBOutlet UIWebView *BCITSAWeb;
@property (nonatomic, retain) NSString *url;
@end
