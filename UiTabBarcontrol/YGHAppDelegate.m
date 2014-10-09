//
//  YGHAppDelegate.m
//  UiTabBarcontrol
//
//  Created by mac on 14-9-19.
//  Copyright (c) 2014年 ___YUGUIHUA___. All rights reserved.
//

#import "YGHAppDelegate.h"
#import "YGHFourViewController.h"
#import "YGHRoootViewController.h"
#import "YGHSecondViewController.h"
#import "YGHThirdViewController.h"
#import "YGHSixViewController.h"
#import "YGHFiveViewController.h"
@implementation YGHAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
   YGHRoootViewController *v1=[[YGHRoootViewController alloc]init];
    YGHSecondViewController *v2=[[YGHSecondViewController alloc]init];
    YGHThirdViewController *v3=[[YGHThirdViewController alloc]init];
    YGHFourViewController *v4=[[YGHFourViewController alloc]init];
    YGHFiveViewController *v5=[[YGHFiveViewController alloc]init];
    YGHSixViewController*v6=[[YGHSixViewController alloc]init];
    UITabBarController *tab=[[UITabBarController alloc]init];
    v1.view.backgroundColor=[UIColor redColor];
    UINavigationController *mvc=[[UINavigationController alloc]initWithRootViewController:v1];
     v2.view.backgroundColor=[UIColor blackColor];
     v3.view.backgroundColor=[UIColor blueColor];
    NSUserDefaults *user=[NSUserDefaults standardUserDefaults];
    NSArray *ary=@[mvc,v2,v3,v4,v5,v6];
    NSArray *arynum=@[@"1",@"2",@"3",@"4",@"5",@"6"];
    tab.viewControllers=ary;
    NSArray *arry=[user objectForKey:@"finaldata" ];
   if(![arry isEqual:arynum]&&[tab.viewControllers[([arry[0] intValue]-1) ] isKindOfClass:[UIViewController class]])
   {
      
       NSArray *str=@[tab.viewControllers[([arry[0] intValue]-1) ],
                      tab.viewControllers[([arry[1] intValue]-1) ],
                      tab.viewControllers[([arry[2] intValue]-1) ],
                      tab.viewControllers[([arry[3] intValue]-1) ],
                      tab.viewControllers[([arry[4] intValue]-1) ],
                      tab.viewControllers[([arry[5] intValue]-1) ]];
                      
                    tab.viewControllers=str;
      
   }
    else
  
    
        tab.viewControllers=ary;
    
    
    self.window.rootViewController=tab;
    tab.selectedIndex=1;
    tab.tabBar.tintColor=[UIColor redColor];
    tab.tabBar.barTintColor=[UIColor blueColor];
    
  
[ tab.tabBar setBackgroundImage:[UIImage imageNamed:@"1.png"]];
    
    tab.delegate=self;
    return YES;
    
}
-(BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController
{
    return YES;
}
-(void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    NSUserDefaults *user=[NSUserDefaults standardUserDefaults];
    NSLog(@"%@",NSStringFromSelector(_cmd));
     NSArray *arry=[user objectForKey:@"finaldata" ];
    NSLog(@"%@",arry);
    
    NSLog(@"%d", [tabBarController.viewControllers indexOfObject: viewController]);
}
-(void)tabBarController:(UITabBarController *)tabBarController willBeginCustomizingViewControllers:(NSArray *)viewControllers
{
     NSLog(@"%@",tabBarController.viewControllers);
}
-(void)tabBarController:(UITabBarController *)tabBarController willEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed
{}
-(void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed
{
    NSLog(@"%@",tabBarController.viewControllers);
    NSMutableArray *finalarr=[[NSMutableArray alloc]init];

    if(changed)
    {
        for(UIViewController *vc in tabBarController.viewControllers)
        {

            NSUInteger i=vc.tabBarItem.tag;
            [finalarr addObject:[NSString stringWithFormat:@"%d",i]];
            
        }
        NSUserDefaults *user=[NSUserDefaults standardUserDefaults];
        [user setObject:finalarr forKey:@"finaldata"];
        [user synchronize];
      
        
        
 
        
        
    }
}
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
