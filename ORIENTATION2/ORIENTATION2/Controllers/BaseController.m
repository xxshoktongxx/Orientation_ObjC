//
//  BaseController.m
//  Orientation
//
//  Created by Son on 8/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BaseController.h"

@interface BaseController ()

@end

@implementation BaseController
@synthesize portrait1 = _portrait1;
@synthesize landscape1 = _landscape1;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {

    }
    return self;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if(((interfaceOrientation == UIInterfaceOrientationLandscapeLeft) || 
        (interfaceOrientation == UIInterfaceOrientationLandscapeRight))){
        self.view = self.landscape1;
        
    }else if(((interfaceOrientation == UIInterfaceOrientationPortrait) || 
              (interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown))){
        self.view = self.portrait1;
        
    }
    return YES;
}

- (void)switchOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if(((interfaceOrientation == UIInterfaceOrientationLandscapeLeft) || 
        (interfaceOrientation == UIInterfaceOrientationLandscapeRight))){
        
        self.view = self.landscape1;
        
    }else if(((interfaceOrientation == UIInterfaceOrientationPortrait) || 
              (interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown))){
        self.view = self.portrait1;
        
    }
}



@end
