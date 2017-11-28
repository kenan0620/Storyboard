//
//  TwelveVC.m
//  Storyboard
//
//  Created by Conan on 2017/11/28.
//  Copyright © 2017年 柯南. All rights reserved.
//

#import "TwelveVC.h"

@interface TwelveVC ()<UISearchBarDelegate>
@property (nonatomic, strong) UISearchBar *storeSearchBar;

@property (weak, nonatomic) IBOutlet UINavigationItem *navItem;

@end

@implementation TwelveVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.navigationController.navigationBar addSubview:self.storeSearchBar];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.storeSearchBar.hidden = NO;
    [self.storeSearchBar becomeFirstResponder];
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.storeSearchBar.hidden = YES;
    [self.storeSearchBar resignFirstResponder];
}
#pragma mark -----懒加载-----
- (UISearchBar *)storeSearchBar{
    if (!_storeSearchBar) {
        _storeSearchBar=[[UISearchBar alloc]initWithFrame:CGRectMake(80, 3, [UIScreen mainScreen].bounds.size.width-90,40)];
        _storeSearchBar.placeholder = [NSString stringWithFormat:@"搜索商店名称"];
        _storeSearchBar.delegate=self;
        _storeSearchBar.searchBarStyle = UISearchBarStyleMinimal;
        _storeSearchBar.backgroundColor=[UIColor clearColor];
        _storeSearchBar.barStyle = UIBarStyleDefault;
    }
    return _storeSearchBar;
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
