//
//  ARPostsTableViewController.m
//  ExtendingUIColorClass
//
//  Created by Anton Rivera on 5/15/14.
//  Copyright (c) 2014 Anton Hilario Rivera. All rights reserved.
//

#import "ARPostsTableViewController.h"
#import "ARPost.h"
#import "ARPostTableViewCell.h"
#import "ARAddPostViewController.h"
#import "UIColor+RandomColor.h"

@interface ARPostsTableViewController () <ARAddPostViewControllerDelegate>

@property (nonatomic, strong) NSMutableArray *postsArray;

@end

@implementation ARPostsTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationItem.title = @"Posts";
    
    _postsArray = [NSMutableArray new];
    for (int i=0; i<10; i++) {
        ARPost *post = [ARPost new];
        post.userName = [NSString stringWithFormat:@"User %d", i];
        post.title = [NSString stringWithFormat:@"Title %d", i];
        post.content = [NSString stringWithFormat:@"Content %d", i];
        post.timeStamp = [NSDate date];
        post.backgroundColor = [UIColor retrieveRandomColor];
        [_postsArray addObject:post];
    }
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return _postsArray.count;
}

- (ARPostTableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ARPostTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    [cell setPost:[_postsArray objectAtIndex:indexPath.row]];
    
    return cell;
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"showPostDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        ARPost *post = [ARPost new];
        post = [_postsArray objectAtIndex:indexPath.row];
        ARAddPostViewController *apvc = (ARAddPostViewController *)segue.destinationViewController;
        apvc.delegate = self;
        apvc.post = post;
    } else if ([segue.identifier isEqualToString:@"addNewPost"]) {
        ARPost *post = [ARPost new];
        post.userName = @"Temp Username";
        post.content = @"Temp Content";
        post.backgroundColor = [UIColor retrieveRandomColor];
        ARAddPostViewController *apvc = (ARAddPostViewController *)segue.destinationViewController;
        apvc.delegate = self;
        apvc.post = post;
        [_postsArray addObject:post];
    }
}

#pragma mark - ARAddPostViewControllerDelegate methods

- (void)deletePost:(ARPost *)post
{
    [self.postsArray removeObject:post];
    [self.tableView reloadData];
}

-(void)savePost
{
    [self.tableView reloadData];
}

-(void)setBackgroundColor
{
    [self.tableView reloadData];
}


@end











