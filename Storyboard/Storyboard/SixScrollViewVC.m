//
//  SixScrollViewVC.m
//  Storyboard
//
//  Created by Conan on 2017/11/27.
//  Copyright © 2017年 柯南. All rights reserved.
//

#import "SixScrollViewVC.h"

@interface SixScrollViewVC ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *setScrollViewHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *setView1Height;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *setView2Height;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *setView3Height;

@end

@implementation SixScrollViewVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)updateViewConstraints{
    [super updateViewConstraints];
    self.setScrollViewHeight.constant = CGRectGetHeight([UIScreen mainScreen].bounds) * 3;
    self.setView1Height.constant =self.setView2Height.constant =self.setView3Height.constant = CGRectGetHeight([UIScreen mainScreen].bounds);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
