//
//  ThreeVC.m
//  Storyboard
//
//  Created by Conan on 2017/11/23.
//  Copyright © 2017年 柯南. All rights reserved.
//

#import "ThreeVC.h"
#import "ThreeCollectionViewCell.h"
@interface ThreeVC ()<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@property (weak, nonatomic) IBOutlet UICollectionView *threeCollection;
@end

@implementation ThreeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"ThreeVC");
    self.threeCollection.backgroundColor = [UIColor yellowColor];

}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 10;
}
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *threeCollectionViewCellID = @"ThreeCollectionViewCellID";
    ThreeCollectionViewCell *threeCollectionViewCell = [collectionView dequeueReusableCellWithReuseIdentifier:threeCollectionViewCellID forIndexPath:indexPath];
    threeCollectionViewCell.collectionLab.text = [NSString stringWithFormat:@"%ld",indexPath.row];
    return threeCollectionViewCell;
}


- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"%ld",(long)indexPath.row);
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
