//
//  OneVC.m
//  Storyboard
//
//  Created by Conan on 2017/11/23.
//  Copyright © 2017年 柯南. All rights reserved.
//

#import "OneVC.h"

#import "OneTableViewCell.h"
@interface OneVC ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *oneTab;

@end

@implementation OneVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)leftBtn:(id)sender {
    NSLog(@"leftBtn");
}

- (IBAction)rightBtn:(id)sender {
    NSLog(@"rightBtn");
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"OneTabViewID";
    
    OneTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier ];
    
    if (cell == nil) {
        cell = [[OneTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
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
