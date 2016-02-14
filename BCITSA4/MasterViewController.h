//
//  MasterViewController.h
//  BCITSA4
//
//  Created by James Kwon on 2015-11-13.
//  Copyright © 2015 ubihub@gmail.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;
@class BCITSAWebViewController;

@interface MasterViewController : UITableViewController {
    IBOutlet UITableView *TableView;
    NSArray *Icons;
    NSArray *Title;
    NSArray *Desc;
    
}

@property (nonatomic, retain) IBOutlet UITableView *TableView;
@property (nonatomic, retain) NSArray *Icons;
@property (nonatomic, retain) NSArray *Title;
@property (nonatomic, retain) NSArray *Desc;

@property (strong, nonatomic) DetailViewController *detailViewController;
@property (strong, nonatomic) BCITSAWebViewController *BCITSAWEBController;


@end

