//
//  FavoriteController.m
//  Orientation
//
//  Created by Son on 8/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FavoriteController.h"
#import "SubViewController.h"

@interface FavoriteController ()

@end

@implementation FavoriteController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (IBAction)pressedButton1:(id)sender 
{
    SubViewController *kill = [[SubViewController alloc]init];
    [self.navigationController pushViewController:kill animated:YES];
    
}
@end
