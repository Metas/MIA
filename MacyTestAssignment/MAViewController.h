//
//  MAViewController.h
//  MacyTestAssignment
//
//  Created by Shruti on 1/24/14.
//  Copyright (c) 2014 Shruti. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MASearchCell.h"
#import "MAPromotionCell.h"
#import "MAButtonsCell.h"
#import "MAAdvertisementMiddleCell.h"
#import "MAAdvertisementBottomCell.h"


@interface MAViewController : UIViewController <UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>

- (IBAction)ButtonScanBarCode:(id)sender;

- (IBAction)ButtonPromotionalShopNow:(id)sender;

- (IBAction)ButtonShop:(id)sender;

- (IBAction)ButtonRegistry:(id)sender;

- (IBAction)ButtonStores:(id)sender;

- (IBAction)ButtonBag:(id)sender;

- (IBAction)ButtonOffers:(id)sender;

- (IBAction)ButtonAccount:(id)sender;

@property(nonatomic,strong)NSMutableDictionary *sectionElements;

@property(nonatomic, weak) IBOutlet UICollectionView *collectionView;
@end
