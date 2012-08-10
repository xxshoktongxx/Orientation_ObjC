//
//  BaseController.h
//  Orientation
//
//  Created by Son on 8/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseController : UIViewController
{
    
}
@property (strong, nonatomic) IBOutlet UIView *portrait1;
@property (strong, nonatomic) IBOutlet UIView *landscape1;
- (void)switchOrientation:(UIInterfaceOrientation)interfaceOrientation;
@end
