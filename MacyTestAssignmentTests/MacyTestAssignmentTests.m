//
//  MacyTestAssignmentTests.m
//  MacyTestAssignmentTests
//
//  Created by Shruti on 1/24/14.
//  Copyright (c) 2014 Shruti. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "MAAppDelegate.h"

@interface MacyTestAssignmentTests : XCTestCase

@end

@implementation MacyTestAssignmentTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testNoOfTapsISNumberExample
{
    //XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
    MAAppDelegate *appDelegate =(MAAppDelegate *)[[UIApplication sharedApplication] delegate];
    isnumber([appDelegate NoOfTaps]);
}

-(void)testNoOfTapsIncrementedByOne
{
    MAAppDelegate *appDelegate =(MAAppDelegate *)[[UIApplication sharedApplication] delegate];
    [appDelegate setNoOfTaps:0];
    XCTAssertTrue([appDelegate NoOfTaps]==1, @"Initialized to Zero");
}


@end
