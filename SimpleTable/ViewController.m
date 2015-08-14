//
//  ViewController.m
//  SimpleTable
//
//  Created by Adrian on 15/8/12.
//  Copyright (c) 2015年 Adrian. All rights reserved.
//

#import "ViewController.h"
#import "SimpleTableCell.h"

#define RecipeName @"RecipeName"
#define Thumbnail @"Thumbnail"
#define PrepTime @"PrepTime"

@interface ViewController ()

{
    NSArray *recipes;
    NSArray *thumbnails;
    NSArray *prepTime;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"recipes" ofType:@"plist"];
    
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    
    recipes = [dict valueForKey:RecipeName];
    thumbnails = [dict valueForKey:Thumbnail];
    prepTime = [dict valueForKey:PrepTime];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [recipes count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableCell";
    
    SimpleTableCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (!cell) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"SimpleTableCell" owner:self options:nil];
        cell = [nib firstObject];
    }
    
    cell.thumbnailImageView.image = [UIImage imageNamed:[thumbnails objectAtIndex:indexPath.row]];
    cell.nameLable.text = [recipes objectAtIndex:indexPath.row];
    cell.prepTimeLable.text = [prepTime objectAtIndex:indexPath.row];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 78;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
//    UIAlertView *messageAlert = [[UIAlertView alloc] initWithTitle:@"Row Selected"
//                                                           message:[recipes objectAtIndex:indexPath.row]
//                                                          delegate:nil
//                                                 cancelButtonTitle:@"OK"
//                                                 otherButtonTitles:nil];
//    [messageAlert show];

    
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    
    cell.accessoryType = UITableViewCellAccessoryCheckmark;
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    

}


@end
