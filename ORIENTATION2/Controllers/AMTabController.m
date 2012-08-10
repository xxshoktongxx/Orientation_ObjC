//
//  AMTabController.m
//  Orientation
//
//  Created by Son on 8/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AMTabController.h"
#import "FavoriteController.h"
#import "MoreController.h"

@interface AMTabController ()

@end

@implementation AMTabController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        UINavigationController *navController = nil;
        
        _viewControllers = [[NSMutableArray alloc]init];
        
        UIViewController *controller1 = [[FavoriteController alloc]init];
        navController = [[UINavigationController alloc]initWithRootViewController:controller1];
        [_viewControllers addObject:navController];
        
        UIViewController *controller2 = [[MoreController alloc]init];
        navController = [[UINavigationController alloc]initWithRootViewController:controller2];
        [_viewControllers addObject:navController];
        
        self.viewControllers = _viewControllers;
    }
    return self;
}

- (void)switchOrientation:(UIInterfaceOrientation)orientation
{
    for(UINavigationController *navController in _viewControllers)
    {
        for (BaseController *controller in navController.viewControllers) {
            [controller switchOrientation:orientation];
        }
    }
}

@end
