//
//  RoomListViewController.m
//  SanGuoFruit
//
//  Created by huang he on 13-4-7.
//  Copyright (c) 2013年 huang he. All rights reserved.
//

#import "RoomListViewController.h"

#import "UIViewController+Animation.h"

#import "RoomManager.h"
#import "MessageReceiver.h"
#import "MessageSender.h"

#import "cocos2d.h"
#import "GameTable.h"

@interface RoomListViewController ()

@end

@implementation RoomListViewController

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

- (IBAction)onButtonEnter:(id)sender {
    [self enterGame];
}

-(IBAction)onButtonBack:(id)sender{
    
    [self.navigationController popViewControllerAnimated:NO];
    
}


-(void)registGameWithRoomId:(int32_t) theId{
    [[MessageSender sharedMsgSender] enterRoomWithRoomId:theId];

}
-(void)enterGame{
//    [[CCDirector sharedDirector] replaceScene:[GameTable scene]];
   [self.navigationController pushViewController:[CCDirector sharedDirector] animated:NO];
    
//    if([CCDirector sharedDirector].runningScene){
//        [[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:0.7 scene:[GameTable scene]]];
//    }
}

@end
