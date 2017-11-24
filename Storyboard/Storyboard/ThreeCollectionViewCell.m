//
//  ThreeCollectionViewCell.m
//  Storyboard
//
//  Created by Conan on 2017/11/24.
//  Copyright © 2017年 柯南. All rights reserved.
//

#import "ThreeCollectionViewCell.h"

@implementation ThreeCollectionViewCell

- (IBAction)btnClick:(id)sender {
    [self sdfgh:self];
}

- (void)sdfgh:(ThreeCollectionViewCell *)cell{
    NSLog(@"%@cell",cell.collectionLab.text);
}

- (void)awakeFromNib{
    [super awakeFromNib];
//    SB或者XIB模式下，创建UI走awakeFromNib。不走- (instancetype)initWithFrame:(CGRect)frame
    
}
@end
