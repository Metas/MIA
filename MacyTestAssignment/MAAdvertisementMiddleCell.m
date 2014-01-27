//
//  MAAdvertisementMiddleCell.m
//  MacyTestAssignment
//
//  Created by Shruti on 1/24/14.
//  Copyright (c) 2014 Shruti. All rights reserved.
//

#import "MAAdvertisementMiddleCell.h"
#import "MAAppDelegate.h"
#import "MATapsViewController.h"

@implementation MAAdvertisementMiddleCell

- (id)initWithFrame:(CGRect)frame{
    // Initialization code
    NSArray *arrayOfViews = [[NSBundle mainBundle] loadNibNamed:@"MAAdvertisementMiddleCell" owner:self options:nil];
    
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
- (IBAction)ButtonShopNow:(id)sender {
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
