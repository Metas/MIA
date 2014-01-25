//
//  MATapsViewController.m
//  MacysApplication
//
//  Created by Shruti on 1/24/14.
//  Copyright (c) 2014 Shruti. All rights reserved.
//

#import "MATapsViewController.h"
#import "MAAppDelegate.h"

@interface MATapsViewController ()

@end

@implementation MATapsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    MAAppDelegate *appDelegate =(MAAppDelegate *)[[UIApplication sharedApplication] delegate];
    
    int numberOfTap = [appDelegate NoOfTaps];
    NSString *displayNumberOfTap =[NSString stringWithFormat:@"Tap # %d",numberOfTap] ;
    [self.LabelTapsDisplay setText:displayNumberOfTap] ;

}

- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark-IBAction 
- (IBAction)ButtonDismiss:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
