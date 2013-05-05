//
//  PersonalPageViewController.m
//  SanGuoFruit
//
//  Created by huang he on 13-4-7.
//  Copyright (c) 2013年 huang he. All rights reserved.
//

#import "PersonalPageViewController.h"

#import "RoomListViewController.h"
#import "LotteryListViewController.h"
#import "StoreListViewController.h"
#import "PrizeListViewController.h"

#import "UIViewController+Animation.h"

@interface PersonalPageViewController ()

@end

@implementation PersonalPageViewController

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self animationShow1];
    
}
-(void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    [self animationHidden1];
    
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
   
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onButtonBack:(id)sender{
    
    [self.navigationController popViewControllerAnimated:NO];

}
-(IBAction)onButtonRoomList:(id)sender{
    RoomListViewController *vc = [[[RoomListViewController alloc] init] autorelease];
    [self.navigationController pushViewController:vc animated:NO];

}
-(IBAction)onButtonPrizeList:(id)sender{
    PrizeListViewController *vc = [[[PrizeListViewController alloc] init] autorelease];
    [self.navigationController pushViewController:vc animated:NO];

}
-(IBAction)onButtonLotteryList:(id)sender{
    LotteryListViewController *vc = [[[LotteryListViewController alloc] init] autorelease];
    [self.navigationController pushViewController:vc animated:NO];

}
-(IBAction)onButtonStoreList:(id)sender{
    StoreListViewController *vc = [[[StoreListViewController alloc] init] autorelease];
    [self.navigationController pushViewController:vc animated:NO];

}

@end
