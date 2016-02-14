//
//  TableCell.h
//  BCITSA2
//
//  Created by MacBook on 15-08-27.
//  Copyright 2015 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface TableCell : UITableViewCell {

	
	IBOutlet UIImageView *Icon; 	
	IBOutlet UILabel *TitleLabel; 	
	IBOutlet UILabel *DescLabel;
	
	
}
@property (nonatomic, retain) IBOutlet UIImageView *Icon;
@property (nonatomic, retain) IBOutlet UILabel *TitleLabel;
@property (nonatomic, retain) IBOutlet UILabel *DescLabel;

@end
