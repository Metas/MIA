//
//  MATapsViewController.h
//  MacysApplication
//
//  Created by Shruti on 1/24/14.
//  Copyright (c) 2014 Shruti. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MATapsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *LabelTapsDisplay;

@property (weak, nonatomic) IBOutlet UIButton *ButtonDismiss;

- (IBAction)ButtonDismiss:(id)sender;

@end
