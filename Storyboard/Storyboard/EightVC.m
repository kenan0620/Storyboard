//
//  EightVC.m
//  Storyboard
//
//  Created by Conan on 2017/11/27.
//  Copyright © 2017年 柯南. All rights reserved.
//

#import "EightVC.h"

@interface EightVC ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentView;

@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;

@property (weak, nonatomic) IBOutlet UIProgressView *basisProgressView;
@end

@implementation EightVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.pageControl.currentPage = 3;
    self.basisProgressView.progress = 0.3;
}

- (IBAction)segmentChange:(UISegmentedControl *)sender {
    NSLog(@"selectedSegmentIndex~%ld",sender.selectedSegmentIndex);
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
