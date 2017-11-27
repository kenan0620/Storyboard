//
//  SevenVC.m
//  Storyboard
//
//  Created by Conan on 2017/11/27.
//  Copyright © 2017年 柯南. All rights reserved.
//

#import "SevenVC.h"

@interface SevenVC ()<UIPickerViewDelegate,UIPickerViewDataSource>
@property (weak, nonatomic) IBOutlet UIView *datePickBgView;

@property (weak, nonatomic) IBOutlet UIDatePicker *datePickerView;

@property (weak, nonatomic) IBOutlet UIPickerView *basisPickerView;

@property (nonatomic, strong) NSString *timeStr;
@end

@implementation SevenVC

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    self.datePickBgView.hidden = YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"YYYY-MM-dd"];
    self.timeStr = [formatter stringFromDate:[NSDate date]];
}

// 返回有多少列
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 5;
}

// 返回第component有多少行
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return 3;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    NSLog(@"row:%ld,component:%ld",row,component);
}

- (IBAction)datePickerChange:(UIDatePicker *)sender {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"YYYY-MM-dd"];
    NSString *dateTime = [formatter stringFromDate:sender.date];
    self.timeStr =dateTime;
    NSLog(@"%@",dateTime);
}

- (IBAction)timeChooseClick:(id)sender {
    self.datePickBgView.hidden = NO;
}

- (IBAction)cancelDateChoose:(id)sender {
    self.datePickBgView.hidden = YES;
}

- (IBAction)enterDateChoose:(id)sender {
    self.datePickBgView.hidden = YES;
    NSLog(@"%@",self.timeStr);
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
