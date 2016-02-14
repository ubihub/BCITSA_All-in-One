//
//  TableCell.m
//  BCITSA2
//
//  Created by MacBook on 15-08-27.
//  Copyright 2015 __MyCompanyName__. All rights reserved.
//

#import "TableCell.h"


@implementation TableCell
@synthesize Icon;
@synthesize TitleLabel;
@synthesize DescLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code.
		self.textLabel.textColor = [UIColor blueColor];
    }
    return self;
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state.
}


- (void)dealloc {
//    [super dealloc];
}


@end
