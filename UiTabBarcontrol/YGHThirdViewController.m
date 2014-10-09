//
//  YGHThirdViewController.m
//  UiTabBarcontrol
//
//  Created by mac on 14-9-19.
//  Copyright (c) 2014年 ___YUGUIHUA___. All rights reserved.
//

#import "YGHThirdViewController.h"

@interface YGHThirdViewController ()

@end

@implementation YGHThirdViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
         self.title=@"third";
        self.tabBarItem.tag=3;
        self.tabBarItem=[[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemDownloads tag:3];
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
