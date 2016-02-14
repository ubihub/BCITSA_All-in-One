//
//  DetailViewController.h
//  BCITSA4
//
//  Created by James Kwon on 2015-11-13.
//  Copyright © 2015 ubihub@gmail.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UITabBarController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

