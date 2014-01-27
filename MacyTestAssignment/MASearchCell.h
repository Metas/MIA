//
//  MASearchCell.h
//  MacyTestAssignment
//
//  Created by Shruti on 1/24/14.
//  Copyright (c) 2014 Shruti. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MASearchCell : UICollectionViewCell


@property (nonatomic, strong) IBOutlet UIButton *ButtonbarCodeView;

@property (nonatomic, strong) IBOutlet UISearchBar *searchBar;

- (IBAction)ButtonBarCode:(id)sender;
@end


