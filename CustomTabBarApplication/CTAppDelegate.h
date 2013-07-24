//
//  CTAppDelegate.h
//  CustomTabBarApplication
//
//  Created by Sajjan on 7/24/13.
//  Copyright (c) 2013 sajjankc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CTAppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>

@property (nonatomic, strong) UIWindow *window;
@property (nonatomic, strong) UITabBarController *tabBarController;

@end
