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



@property(nonatomic,strong)NSMutableDictionary *sectionElements;

@property(nonatomic, weak) IBOutlet UICollectionView *collectionView;
@end
