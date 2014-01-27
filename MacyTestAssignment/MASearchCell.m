//
//  MASearchCell.m
//  MacyTestAssignment
//
//  Created by Shruti on 1/24/14.
//  Copyright (c) 2014 Shruti. All rights reserved.
//

#import "MASearchCell.h"
#import "MAAppDelegate.h"
#import "MATapsViewController.h"
#import "MAViewController.h"

@implementation MASearchCell

- (id)initWithFrame:(CGRect)frame{
    // Initialization code
    NSArray *arrayOfViews = [[NSBundle mainBundle] loadNibNamed:@"MASearchCell" owner:self options:nil];
    
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
-(void)handleNavigation{
    MAAppDelegate *appDelegate =(MAAppDelegate *)[[UIApplication sharedApplication] delegate];
    
    [appDelegate setNoOfTaps:1];
    
    MATapsViewController *controller =[[MATapsViewController alloc]init];
    UINavigationController *navi = ((UINavigationController*)self.window.rootViewController);
    [navi presentViewController:controller animated:NO completion:nil];
    
}

- (IBAction)ButtonBarCode:(id)sender {
    [self handleNavigation];
}
@end
