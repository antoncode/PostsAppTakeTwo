//
//  ARAddPostViewController.m
//  ExtendingUIColorClass
//
//  Created by Anton Rivera on 5/15/14.
//  Copyright (c) 2014 Anton Hilario Rivera. All rights reserved.
//

#import "ARAddPostViewController.h"
#import "UIColor+LightenColor.h"

@interface ARAddPostViewController ()

@property (weak, nonatomic) IBOutlet UITextField *userNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *contentTextField;
@property (weak, nonatomic) IBOutlet UILabel *timeStampLabel;

@end

@implementation ARAddPostViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.navigationItem.title = _post.title;
    _userNameTextField.text = _post.userName;
    _contentTextField.text = _post.content;
    
    NSDateFormatter *formatter = [NSDateFormatter new];
    [formatter setDateFormat:@"MMM dd, yyyy hh:mma"];
    NSString *stringFromDate = [formatter stringFromDate:_post.timeStamp];
    _timeStampLabel.text = stringFromDate;
    
    self.view.backgroundColor = _post.backgroundColor;
}

- (IBAction)saveButtonPressed:(id)sender
{
    _post.userName = _userNameTextField.text;
    _post.content = _contentTextField.text;
    [self.delegate savePost];
}

- (IBAction)deletePost:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
    [self.delegate deletePost:_post];
}

- (IBAction)lightenColorButtonPressed:(id)sender
{
    UIColor *lighterColor = [UIColor lightenColor:_post.backgroundColor];
    [self.delegate setBackgroundColor];
    _post.backgroundColor = lighterColor;
    self.view.backgroundColor = lighterColor;
}

@end




