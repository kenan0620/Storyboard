//
//  BasisVC.m
//  Storyboard
//
//  Created by Conan on 2017/11/24.
//  Copyright © 2017年 柯南. All rights reserved.
//
//基本控件的使用
#import "BasisVC.h"

@interface BasisVC ()

@property (weak, nonatomic) IBOutlet UILabel *basisLab;
@property (weak, nonatomic) IBOutlet UIButton *basisBtn;
@property (weak, nonatomic) IBOutlet UITextField *basisTextField;
@property (weak, nonatomic) IBOutlet UIView *basisView;
@property (weak, nonatomic) IBOutlet UIImageView *basisImageView;
@property (weak, nonatomic) IBOutlet UITextView *basisTextView;
@property (weak, nonatomic) IBOutlet UISwitch *basisSwitch;

@end

@implementation BasisVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
 
    
}
- (IBAction)basisBtnClick:(id)sender {
    NSLog(@"基本控件的使用 basisBtnClick");
}

/*
 在storyboard中，图片设置自适应大小
 
 可以通过storyboard 图片控制中的content model 的模式类型，可以设置不同的类型；
 如果想要设置自适应，只需要设置图片的二个相邻约束即可。
 */


- (IBAction)switchClick:(UISwitch *)sender {
    if (sender.on) {
       NSLog(@"on");
    }else{
        NSLog(@"off");
    }
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.basisTextView resignFirstResponder];
    [self.basisTextField resignFirstResponder];
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
