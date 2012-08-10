//
//  ViewController.m
//  ORIENTATION2
//
//  Created by Son on 8/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)init
{
    self = [super init];
    if (self) {
        _tabBarController = [[AMTabController alloc]initWithNibName:@"AMTabController" bundle:nil];
        _tabBarController.view.frame = CGRectMake(0, 0,320,460);
        [self.view addSubview:_tabBarController.view];
    }
    return self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if (_tabBarController) {
        [_tabBarController switchOrientation:interfaceOrientation];
    }
    return YES;
}

- (void)viewWillAppear:(BOOL)animated
{
    
}

@end
