//
//  ARPostTableViewCell.m
//  ExtendingUIColorClass
//
//  Created by Anton Rivera on 5/15/14.
//  Copyright (c) 2014 Anton Hilario Rivera. All rights reserved.
//

#import "ARPostTableViewCell.h"

@implementation ARPostTableViewCell

-(void)setPost:(ARPost *)post
{
    self.textLabel.text = post.userName;
    self.detailTextLabel.text = post.title;
    self.backgroundColor = post.backgroundColor;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
