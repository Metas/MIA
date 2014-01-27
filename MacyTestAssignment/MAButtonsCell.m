//
//  MAButtonsCell.m
//  MacyTestAssignment
//
//  Created by Shruti on 1/24/14.
//  Copyright (c) 2014 Shruti. All rights reserved.
//

#import "MAButtonsCell.h"
#import "MAAppDelegate.h"
#import "MATapsViewController.h"

@implementation MAButtonsCell

- (id)initWithFrame:(CGRect)frame{
    // Initialization code
    NSArray *arrayOfViews = [[NSBundle mainBundle] loadNibNamed:@"MAButtonsCell" owner:self options:nil];
    
    if ([arrayOfViews count] < 1) {
        return nil;
    }
    
    if (![[arrayOfViews objectAtIndex:0] isKindOfClass:[UICollectionViewCell class]]) {
        return nil;
    }
    
    self = [arrayOfViews objectAtIndex:0];
    
    
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/
#pragma IBAction
- (IBAction)ButtonShop:(id)sender {
    [self handleNavigation];
}

- (IBAction)ButtonRegistry:(id)sender {
    [self handleNavigation];
}

- (IBAction)ButtonStores:(id)sender {
    [self handleNavigation];
}

- (IBAction)ButtonBag:(id)sender {
    [self handleNavigation];
}

- (IBAction)ButtonOffers:(id)sender {
    [self handleNavigation];
}

- (IBAction)ButtonAccount:(id)sender {
    [self handleNavigation];
}

#pragma custom method
-(void)handleNavigation{
    MAAppDelegate *appDelegate =(MAAppDelegate *)[[UIApplication sharedApplication] delegate];
    
    [appDelegate setNoOfTaps:1];
    
    MATapsViewController *controller =[[MATapsViewController alloc]init];
    UINavigationController *navi = ((UINavigationController*)self.window.rootViewController);
    [navi presentViewController:controller animated:NO completion:nil];
}
@end
