//
//  ViewController.m
//  SimpleTable
//
//  Created by Adrian on 15/8/12.
//  Copyright (c) 2015年 Adrian. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

{
    NSArray *recipes;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    recipes = [NSArray arrayWithObjects:@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast",
               @"Humburger", @"Ham and Egg Sandwich", @"Creme Brelee", @"Whilte Chocolate Donut",
               @"StarBucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg",
               @"Noodle with BBQ pork", @"Japanese Noodle with Pork", @"Green Tea",
               @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini", nil];
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
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.imageView.image = [UIImage imageNamed:@"creme_brelee.jpg"];
    cell.textLabel.text = [recipes objectAtIndex:indexPath.row];
    
    return cell;
}

@end
