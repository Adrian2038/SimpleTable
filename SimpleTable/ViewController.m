//
//  ViewController.m
//  SimpleTable
//
//  Created by Adrian on 15/8/12.
//  Copyright (c) 2015年 Adrian. All rights reserved.
//

#import "ViewController.h"
#import "SimpleTableCell.h"

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
    
    recipes = [NSArray arrayWithObjects:@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast",
               @"Humburger", @"Ham and Egg Sandwich", @"Creme Brelee", @"Whilte Chocolate Donut",
               @"StarBucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg",
               @"Noodle with BBQ pork", @"Japanese Noodle with Pork", @"Green Tea",
               @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini", nil];
    
    thumbnails = [NSArray arrayWithObjects:@"egg_benedict.jpg", @"mushroom_risotto.jpg",
                  @"full_breakfast.jpg", @"hamburger.jpg", @"ham_and_egg_sandwich.jpg",
                  @"creme_brelee.jpg", @"white_chocolate_donut.jpg", @"starbucks_coffee.jpg",
                  @"vegetable_curry.jpg", @"instant_noodle_with_egg.jpg", @"noodle_with_bbq_pork.jpg",
                  @"japanese_noodle_with_pork.jpg", @"green_tea.jpg", @"thai_shrimp_cake.jpg",
                  @"angry_birds_cake.jpg", @"ham_and_cheese_panini.jpg", nil];
    
    prepTime = [NSArray arrayWithObjects:@"30 min", @"28 min", @"29 min", @"25 min", @"31 min", @"35 min", @"26 min",
                @"30 min", @"28 min", @"29 min", @"25 min", @"31 min", @"35 min", @"26 min",@"30 min", @"28 min", nil];
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

@end
