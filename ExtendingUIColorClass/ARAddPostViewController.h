//
//  ARAddPostViewController.h
//  ExtendingUIColorClass
//
//  Created by Anton Rivera on 5/15/14.
//  Copyright (c) 2014 Anton Hilario Rivera. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ARPost.h"

@protocol ARAddPostViewControllerDelegate <NSObject>

-(void)deletePost:(ARPost *)post;
-(void)savePost;
-(void)setBackgroundColor;

@end


@interface ARAddPostViewController : UIViewController

@property (nonatomic, unsafe_unretained) id<ARAddPostViewControllerDelegate> delegate;
@property (nonatomic, strong)ARPost *post;

@end
