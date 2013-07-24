//
//  CTAppDelegate.m
//  CustomTabBarApplication
//
//  Created by Sajjan on 7/24/13.
//  Copyright (c) 2013 sajjankc. All rights reserved.
//

#import "CTAppDelegate.h"
#import "CTFirstVC.h"
#import "CTSecondVC.h"

@implementation CTAppDelegate

@synthesize tabBarController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    self.tabBarController = [[UITabBarController alloc]init]; //Initialize UITabBarController 
    self.tabBarController.delegate = self; //Set UITabBarController Delegate.
    
    //Create object pointer for each ViewController.
    CTFirstVC *firstVC = [[CTFirstVC alloc]initWithNibName:@"CTFirstVC" bundle:nil];
    UINavigationController *firstNav = [[UINavigationController alloc]initWithRootViewController:firstVC];
    firstNav.tabBarItem.title = @"First";
    firstNav.tabBarItem.image = [UIImage imageNamed:@""]; //Give Your Image Name.
    firstNav.navigationBar.barStyle = UIBarStyleBlack;
    
    CTSecondVC *secondVC = [[CTSecondVC alloc]initWithNibName:@"CTSecondVC" bundle:nil];
    UINavigationController *secondNav = [[UINavigationController alloc]initWithRootViewController:secondVC];
    secondNav.tabBarItem.title = @"Second";
    secondNav.tabBarItem.image = [UIImage imageNamed:@""];
    secondNav.navigationBar.barStyle = UIBarStyleBlack;
    
    //Add all ViewController in UITabBarController.
    self.tabBarController.moreNavigationController.navigationBar.tintColor = [UIColor blackColor];
    self.tabBarController.viewControllers = [NSArray arrayWithObjects:firstNav, secondNav, nil];

    //Finally set UITabBarController as rootViewController
    self.window.rootViewController = self.tabBarController;
    
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
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
