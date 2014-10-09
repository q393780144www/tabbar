//
//  YGHSecondViewController.m
//  UiTabBarcontrol
//
//  Created by mac on 14-9-19.
//  Copyright (c) 2014年 ___YUGUIHUA___. All rights reserved.
//

#import "YGHSecondViewController.h"

@interface YGHSecondViewController ()

@end

@implementation YGHSecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
         self.title=@"second";
        self.tabBarItem.tag=2;
        self.tabBarItem.image=[UIImage imageNamed:@"tabbar_badge@2x.png"];
        self.tabBarItem.selectedImage=[UIImage imageNamed:@"tabbar_discover@2x"];
        self.tabBarItem.badgeValue=@"10";
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
