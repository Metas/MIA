//
//  MAAppDelegate.h
//  MacyTestAssignment
//
//  Created by Shruti on 1/24/14.
//  Copyright (c) 2014 Shruti. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MAAppDelegate : UIResponder <UIApplicationDelegate>
{
    int NoOfTaps;
}
@property(nonatomic,readwrite) int NoOfTaps;

@property (strong, nonatomic) UIWindow *window;

@end
