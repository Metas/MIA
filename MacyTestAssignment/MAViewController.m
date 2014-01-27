//
//  MAViewController.m
//  MacyTestAssignment
//
//  Created by Shruti on 1/24/14.
//  Copyright (c) 2014 Shruti. All rights reserved.
//

#import "MAViewController.h"
#import "MAAppDelegate.h"
#import "MATapsViewController.h"
#import "MASearchCell.h"
#import "MAPromotionCell.h"
#import "MAButtonsCell.h"
#import "MAAdvertisementMiddleCell.h"
#import "MAAdvertisementBottomCell.h"

@interface MAViewController ()

@end

@implementation MAViewController

- (void)viewDidLoad{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.sectionElements =[@{} mutableCopy];
    //[self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"SearchCell"];
}

- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark-UICollectionDatasource methods

-(NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section {
    return 1;//only one row since these are custom cells and fixed
}

- (NSInteger)numberOfSectionsInCollectionView: (UICollectionView *)collectionView {
    return 5;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.section ==0)
    {
        MASearchCell *cell = [cv dequeueReusableCellWithReuseIdentifier:@"SearchCell" forIndexPath:indexPath];
        [cell.ButtonbarCodeView setImage:[UIImage imageNamed:@"barCode.png"] forState:UIControlStateNormal];
        return cell;
    }
    else if(indexPath.section ==1)// (indexPath.section ==2)
    {
        MAPromotionCell *cell = [cv dequeueReusableCellWithReuseIdentifier:@"PromotionCell" forIndexPath:indexPath];
        [cell.promotionalImage setImage:[UIImage imageNamed:@"PromoSales.png"]];
        return cell;
    }
    else if(indexPath.section ==2)
    {
        MAButtonsCell *cell =[cv dequeueReusableCellWithReuseIdentifier:@"ButtonsCell" forIndexPath:indexPath];
        return cell;
    }
    else if(indexPath.section ==3)
    {
        MAAdvertisementMiddleCell *cell =[cv dequeueReusableCellWithReuseIdentifier:@"AdvertisementMiddleCell" forIndexPath:indexPath];
        [cell.AdvertisementImage setImage:[UIImage imageNamed:@"advertisementMiddle.png"]];
        return cell;

    }
    else
    {
        MAAdvertisementBottomCell *cell =[cv dequeueReusableCellWithReuseIdentifier:@"AdvertisementBottomCell" forIndexPath:indexPath];
        [cell.AdvertisementImage setImage:[UIImage imageNamed:@"advertisementBottom.png"]];
        return cell;

    }
    
}

#pragma mark-UICollectionLayout delegate methods
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.section ==0)
        return CGSizeMake(320, 43);
    else if(indexPath.section ==1)
        return CGSizeMake(320, 112);
    else if(indexPath.section ==2){
        return CGSizeMake(320, 175);
    }
    else if(indexPath.section ==3)
    {
        return CGSizeMake(320, 68);
    }
    else
    {
        return CGSizeMake(320, 55);
    }
}

#pragma mark-UICollectionDelegate methods
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
    [self handleNavigation];
}

#pragma mark-personal methods
-(void)handleNavigation{
    MAAppDelegate *appDelegate =(MAAppDelegate *)[[UIApplication sharedApplication] delegate];
    
    [appDelegate setNoOfTaps:1];
    
    MATapsViewController *controller = [[MATapsViewController alloc] initWithNibName:@"MATapsViewController" bundle:nil];
    [self presentViewController:controller animated:YES completion:nil];
    
}

#pragma mark-IBAction

-(void)handleTap{
    [self handleNavigation];
}

- (IBAction)ButtonScanBarCode:(id)sender {
    [self handleNavigation];
    
}

- (IBAction)ButtonPromotionalShopNow:(id)sender {
     [self handleNavigation];
}

- (IBAction)ButtonShop:(id)sender {
     [self handleNavigation];
}

- (IBAction)ButtonRegistry:(id)sender {
     [self handleNavigation];
}

- (IBAction)ButtonAdvertisementShopNow:(id)sender {
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
@end
