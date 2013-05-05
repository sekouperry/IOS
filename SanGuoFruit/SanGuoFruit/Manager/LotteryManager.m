//
//  LotteryManager.m
//  SanGuoFruit
//
//  Created by huang he on 13-4-7.
//  Copyright (c) 2013年 huang he. All rights reserved.
//

#import "LotteryManager.h"
#import "MessageReceiver.h"
#import "MessageSender.h"

static LotteryManager *lotteryManager = nil;
@implementation LotteryManager
@synthesize list;

+(LotteryManager *)share{
    if(lotteryManager == nil){
        lotteryManager = [[LotteryManager alloc] init];
    }
    return lotteryManager;
}

-(id)init{
    self = [super init];
    if(self){
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(getLotteryListMessage:) name:GetLotteryListMessage object:nil];
        
        list = [NSMutableArray new];
        
    }
    return self;
}

-(void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:GetLotteryListMessage object:nil];
    
    [list release];
    [super dealloc];
}
#pragma mark -
#pragma mark 网络消息
-(void)getLotteryListMessage:(NSNotification *)sender{
    GetLotteryListRes *model = sender.object;
    
    [list addObjectsFromArray:[model lotteryInfosList]];
    
    for(LotteryInfo *cur in list){
        for(LotteryPrizeInfo *prize in [cur prizesList])
        [self downWithURL:prize.prizePic];
    }
    
}
#pragma mark -
@end
