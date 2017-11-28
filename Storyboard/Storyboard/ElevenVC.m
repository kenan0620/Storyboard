//
//  ElevenVC.m
//  Storyboard
//
//  Created by Conan on 2017/11/28.
//  Copyright © 2017年 柯南. All rights reserved.
//

#import "ElevenVC.h"

@interface ElevenVC ()
@property (strong, nonatomic) IBOutlet UIGestureRecognizer *shoushi;

@property (weak, nonatomic) IBOutlet UIImageView *tapImageView;

@end

@implementation ElevenVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tapImageView.userInteractionEnabled = YES;

}
- (IBAction)imageClick:(UIGestureRecognizer *)sender {
    NSLog(@"图片被点击");
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
