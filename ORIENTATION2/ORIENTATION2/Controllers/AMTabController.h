//
//  AMTabController.h
//  Orientation
//
//  Created by Son on 8/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface AMTabController : UITabBarController
{
    NSMutableArray *_viewControllers;
}
- (void)switchOrientation:(UIInterfaceOrientation)orientation;
@end
