//
//  GameContorller.m
//  SanGuoFruit
//
//  Created by huang he on 13-4-7.
//  Copyright (c) 2013年 huang he. All rights reserved.
//

#import "GameContorller.h"
#import "AppDelegate.h"
#import "MessageReceiver.h"
#import "MessageSender.h"
#import "PlayerInfo.h"
#import "UserInfoManager.h"


static GameContorller *gameContorller = nil;
@implementation GameContorller
@synthesize gameTable;
@synthesize roomId;
@synthesize deskId;
@synthesize personList;
@synthesize yazhuNumArr;
+(GameContorller *)share{
    if(gameContorller == nil){
        gameContorller = [[GameContorller alloc] init];
    }
    return gameContorller;
}

-(id)init{
    self = [super init];
    if(self){
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(roomAnteUpMessage:) name:RoomAnteUpMessage object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(roomTipMessage:) name:RoomTipMessage object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(otherEnterRoomMessage:) name:OtherEnterRoomMessage object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(roomExitMessage:) name:RoomExitMessage object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(matchListMessage:) name:MatchListMessage object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(userAnteUpMessage:) name:UserAnteUpMessage object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(anteUpResultMessage:) name:AnteUpResultMessage object:nil];
        
        personList = [NSMutableArray new];
        yazhuNumArr = [NSMutableArray new];
        
        for (int i = 0; i<6; i++) {
            [yazhuNumArr addObject:[NSNumber numberWithInt:0]];
            
        }
    
    }
    return self;
}

-(void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:RoomAnteUpMessage object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:RoomTipMessage object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:OtherEnterRoomMessage object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:RoomExitMessage object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:MatchListMessage object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UserAnteUpMessage object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:AnteUpResultMessage object:nil];
    
    [personList release];
    [yazhuNumArr release];
    [super dealloc];
}


-(void)quit{
    AppController *app = (AppController *)[UIApplication sharedApplication].delegate;
    [app.navController popViewControllerAnimated:NO];

}
#pragma mark -
#pragma mark 游戏控制消息
-(void)onBttonBack:(CCMenuItem *)sender{
    [self quit];
    
//    [[CCDirector sharedDirector] popScene];
}

-(void)onButtonYaZhu:(CCMenuItem *)sender{
    
    if(sender.tag == 6){
    
    }
    else{
    
        NSNumber *yazhuNumOld  = [yazhuNumArr objectAtIndex:sender.tag];
        int numOld = [yazhuNumOld intValue];
        int numNew = numOld+1;
        if(numNew >99 ){
            return;
        }
        
        
        NSNumber *yazhuNumNew = [NSNumber numberWithInt:numNew];
        [yazhuNumArr replaceObjectAtIndex:sender.tag withObject:yazhuNumNew];
        
        [gameTable.ownGamepad setYaZhuWithTag:sender.tag num:numNew];
    }
   
    

}
#pragma mark -


#pragma mark 网络消息
//压住推送消息
-(void)roomAnteUpMessage:(NSNotification *)sender{

}

//提示
-(void)roomTipMessage:(NSNotification *)sender{
    
}

//其他人进入房间
-(void)otherEnterRoomMessage:(NSNotification *)sender{
    EnterRoomPushRes *model = sender.object;
    
    PlayerInfo *playerInfo = [[PlayerInfo alloc] init];
    
    playerInfo.experience = model.experience;
    playerInfo.nextExperience = model.nextExperience;
    playerInfo.userId = model.userId;
    playerInfo.userName = model.userName;
    playerInfo.photoUrl = model.photoUrl;
    playerInfo.rank = model.rank;
    playerInfo.vip = model.vip;
    playerInfo.coin = model.coin;
    playerInfo.lottery = model.lottery;
    
    [personList addObject:playerInfo];
    
    
}

//退出房间
-(void)roomExitMessage:(NSNotification *)sender{
    RoomExitRes *model = sender.object;
    if(model.userId == [UserInfoManager share].userId){
        [self quit];
    }
    else{
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"userId == %d",model.userId];
        
        NSArray *arr = [personList filteredArrayUsingPredicate:predicate];
        if([arr count]){
            [personList removeObjectsInArray:arr];
            
        }
    }
}


//游戏开始，驻值信息
-(void)matchListMessage:(NSNotification *)sender{
    
}

//自己压住返回
-(void)userAnteUpMessage:(NSNotification *)sender{
    
}

//游戏结果
-(void)anteUpResultMessage:(NSNotification *)sender{
    
}
#pragma mark -

@end
