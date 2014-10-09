
//
//  YGHRoootViewController.m
//  UiTabBarcontrol
//
//  Created by mac on 14-9-19.
//  Copyright (c) 2014年 ___YUGUIHUA___. All rights reserved.
//

#import "YGHRoootViewController.h"

@interface YGHRoootViewController ()

@end

@implementation YGHRoootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title=@"first";//自定义tabbaritem
        //UIbarItem的自定义
        self.tabBarItem.tag=1;
        self.tabBarItem.image=[UIImage imageNamed:@"tabbar_me@2x.png"];
      
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
