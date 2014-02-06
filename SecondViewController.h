//
//  SecondViewController.h
//  MacyAssignment2
//
//  Created by Chao Xu on 14-2-4.
//  Copyright (c) 2014年 Chao Xu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "ViewController.h"
@interface SecondViewController : UIViewController{
    int Num;
}
@property (nonatomic,strong) IBOutlet UILabel *labelValue;
@property (nonatomic,strong) NSString *StrValue;
@end
