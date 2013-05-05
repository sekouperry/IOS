//
//  PrizeManager.m
//  SanGuoFruit
//
//  Created by huang he on 13-4-7.
//  Copyright (c) 2013年 huang he. All rights reserved.
//

#import "PrizeManager.h"
#import "MessageReceiver.h"
#import "MessageSender.h"

static PrizeManager *prizeManager = nil;

@implementation PrizeManager
@synthesize list;

+(PrizeManager *)share{
    if(prizeManager == nil){
        prizeManager = [[PrizeManager alloc] init];
    }
    return prizeManager;
}

-(id)init{
    self = [super init];
    if(self){
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(getPrizeListMessage:) name:GetPrizeListMessage object:nil];
        
        list = [NSMutableArray new];
        
    }
    return self;
}

-(void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:ShopListMessage object:nil];
    
    [list release];
    [super dealloc];
}
#pragma mark -
#pragma mark 网络消息
-(void)getPrizeListMessage:(NSNotification *)sender{
    GetPrizeListRes *model = sender.object;
    
    [list addObjectsFromArray:[model prizeInfosList]];
    
    for(PrizeInfo *cur in list){
        [self downWithURL:cur.prizeImage];
    }
    
}
#pragma mark -
@end
