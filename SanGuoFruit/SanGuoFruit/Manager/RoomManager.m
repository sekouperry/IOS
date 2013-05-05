//
//  RoomManager.m
//  SanGuoFruit
//
//  Created by huang he on 13-4-7.
//  Copyright (c) 2013年 huang he. All rights reserved.
//

#import "RoomManager.h"
#import "MessageReceiver.h"
#import "MessageSender.h"
#import "cocos2d.h"
#import "AppDelegate.h"
#import "GameContorller.h"

static RoomManager *roomManager = nil;
@implementation RoomManager
@synthesize list;

+(RoomManager *)share{
    if(roomManager == nil){
        roomManager = [[RoomManager alloc] init];
    }
    return roomManager;
}

-(id)init{
    self = [super init];
    if(self){
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(roomListMessage:) name:RoomListMessage object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(enterRoomMessage:) name:EnterRoomMessage object:nil];
        
        list = [NSMutableArray new];
    
    }
    return self;
}

-(void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:RoomListMessage object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:EnterRoomMessage object:nil];
    
    [list release];
    [super dealloc];
}
#pragma mark -
#pragma mark 网络消息
-(void)roomListMessage:(NSNotification *)sender{
    GetRoomListRes *model = sender.object;
    
    [list addObjectsFromArray:[model roomInfosList]];
    
    for(RoomInfo *cur in list){
        [self downWithURL:cur.roomPic];
    }
    
}

-(void)enterRoomMessage:(NSNotification *)sender{
    EnterRoomRes *model = sender.object;
    AppController *app = (AppController *)[UIApplication sharedApplication].delegate;
    [app.navController pushViewController:[CCDirector sharedDirector] animated:NO];
    
    [GameContorller share].roomId = model.roomId;
    [GameContorller share].deskId = model.deskId;
    
    
}
#pragma mark -

@end
