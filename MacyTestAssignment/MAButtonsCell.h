//
//  MAButtonsCell.h
//  MacyTestAssignment
//
//  Created by Shruti on 1/24/14.
//  Copyright (c) 2014 Shruti. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MAButtonsCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIButton *ButtonShop;

@property (weak, nonatomic) IBOutlet UIButton *ButtonRegistry;

@property (weak, nonatomic) IBOutlet UIButton *ButtonStores;

@property (weak, nonatomic) IBOutlet UIButton *ButtonBag;

@property (weak, nonatomic) IBOutlet UIButton *Buttonoffers;

@property (weak, nonatomic) IBOutlet UIButton *ButtonAccount;


- (IBAction)ButtonShop:(id)sender;

- (IBAction)ButtonRegistry:(id)sender;
- (IBAction)ButtonStores:(id)sender;
- (IBAction)ButtonBag:(id)sender;
- (IBAction)ButtonOffers:(id)sender;
- (IBAction)ButtonAccount:(id)sender;

@end
