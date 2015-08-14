//
//  SimpleTableCell.h
//  SimpleTable
//
//  Created by Adrian on 15/8/13.
//  Copyright (c) 2015年 Adrian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleTableCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UIImageView *thumbnailImageView;
@property (nonatomic, weak) IBOutlet UILabel *nameLable;
@property (nonatomic, weak) IBOutlet UILabel *prepTimeLable;

@end
