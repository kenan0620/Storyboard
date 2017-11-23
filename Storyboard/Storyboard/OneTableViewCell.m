//
//  OneTableViewCell.m
//  Storyboard
//
//  Created by Conan on 2017/11/23.
//  Copyright © 2017年 柯南. All rights reserved.
//

#import "OneTableViewCell.h"

@implementation OneTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
