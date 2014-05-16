//
//  ARPostTableViewCell.h
//  ExtendingUIColorClass
//
//  Created by Anton Rivera on 5/15/14.
//  Copyright (c) 2014 Anton Hilario Rivera. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ARPost.h"

@interface ARPostTableViewCell : UITableViewCell

@property (nonatomic, strong) ARPost *post;

-(void)setPost:(ARPost *)post;

@end
