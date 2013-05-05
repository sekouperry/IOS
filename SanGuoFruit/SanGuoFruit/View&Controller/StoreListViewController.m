//
//  StoreListViewController.m
//  SanGuoFruit
//
//  Created by huang he on 13-4-7.
//  Copyright (c) 2013年 huang he. All rights reserved.
//

#import "StoreListViewController.h"

#import "UIViewController+Animation.h"

@interface StoreListViewController ()

@end

@implementation StoreListViewController

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

@end
