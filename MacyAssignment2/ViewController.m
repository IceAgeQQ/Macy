//
//  ViewController.m
//  MacyAssignment2
//
//  Created by Chao Xu on 14-2-4.
//  Copyright (c) 2014年 Chao Xu. All rights reserved.
//

#import "ViewController.h"
#import "Cell.h"
#import "SecondViewController.h"
@interface ViewController ()

@end

@implementation ViewController

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.dataArr.count;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    Cell *aCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"myCell" forIndexPath:indexPath];
    aCell.myLabel.text = self.dataArr[indexPath.row];
   // aCell.frame = CGRectMake(100, 100, 80, 50);
    return aCell;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.dataArr =@[@"1",@"2",@"3",@"4",@"5",@"6"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)changeVC:(id)sender {
    SecondViewController *SVC = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    [self presentViewController:SVC animated:YES completion:nil];
}

@end
