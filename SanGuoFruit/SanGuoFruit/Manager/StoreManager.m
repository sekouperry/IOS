//
//  StoreManager.m
//  SanGuoFruit
//
//  Created by huang he on 13-4-7.
//  Copyright (c) 2013年 huang he. All rights reserved.
//

#import "StoreManager.h"
#import "MessageReceiver.h"
#import "MessageSender.h"

static StoreManager *storeManager = nil;
@implementation StoreManager
@synthesize list;

+(StoreManager *)share{
    if(storeManager == nil){
        storeManager = [[StoreManager alloc] init];
    }
    return storeManager;
}

-(id)init{
    self = [super init];
    if(self){
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(shopListMessage:) name:ShopListMessage object:nil];
        
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
-(void)shopListMessage:(NSNotification *)sender{
    GetShopListRes *model = sender.object;
    
    [list addObjectsFromArray:[model shopInfosList]];
    
    for(ShopInfo *cur in list){
        [self downWithURL:cur.shopPhoto];
    }
    
}
#pragma mark -
@end
