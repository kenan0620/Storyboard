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
@property (weak, nonatomic) IBOutlet UIStepper *basisStepper;

@property (weak, nonatomic) IBOutlet UILabel *basisStepperLab;

@end

@implementation EightVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.pageControl.currentPage = 3;
    self.basisProgressView.progress = 1.3;
    self.basisStepper.value = 0.00;
     self.basisStepper.maximumValue = 10000.00;
     self.basisStepper.minimumValue = 1.00;
    self.basisStepper.stepValue = 15;
    self.basisStepper.continuous = YES;
    self.basisStepperLab.text = [NSString stringWithFormat:@"%d",(int)self.basisStepper.value];
}

- (IBAction)segmentChange:(UISegmentedControl *)sender {
    NSLog(@"selectedSegmentIndex~%ld",sender.selectedSegmentIndex);
}
- (IBAction)stepperChanged:(UIStepper *)sender {
    NSLog(@"%d",(int)sender.value);
    self.basisStepperLab.text = [NSString stringWithFormat:@"%d",(int)self.basisStepper.value];
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
