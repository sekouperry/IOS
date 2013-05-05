//
//  MessageReceiver.m
//  TestSocket
//
//  Created by LiuLiu on 12-8-14.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "MessageReceiver.h"
//#import "MessageSender.h"
//#import "MainMenuViewController.h"
#import "cocos2d.h"
//#import "GameLayer.h"
//#import "GameData.h"
//#import "Game.h"
//#import "NetDelayManager.h"




@implementation MessageReceiver

static MessageReceiver *receiver = nil;

-(id)init{
    self = [super init];
    if(self){

    
    }
    return self;
}

+ (id)sharedMsgReceiver{
    if(receiver == nil){
        receiver = [[MessageReceiver alloc] init];
    }
    return receiver;
}


- (void)dispatchMsg:(FruitMessageProto *)baseMessage{
    NSLog(@"消息号:%x",baseMessage.msgId);
    switch (baseMessage.msgId) {
        case USERID_REGISTER:
            //用户注册
            [self registerMessage:baseMessage];
        
            break;
        case USERID_BINDING:
            //用户绑定
            [self userThreeBindMessage:baseMessage];
            
            break;
        case USERID_LOGIN:
            //用户登录
            [self userLogin:baseMessage];
            
            break;
        case USERID_ATTRIBUTE_CHANGE:
            //用户更改属性
            [self userAttributeChange:baseMessage];
            
            break;
        case GET_ROOM_LIST:
            //得到房间列表
            [self roomList:baseMessage];
            break;
        case ENTER_ROOM_INFO:
            //进入房间
            [self enterRoomInfo:baseMessage];
            break;
        case ROOM_ANTE_UP_INFO:
            //房间推送玩家押注消息
            [self roomAnteUpInfo:baseMessage];
            break;
        case ROOM_TIP:
            //房间飘字
            [self roomTip:baseMessage];
            break;
        case ROOM_ENTER_INFO:
            //别人进入房间
            [self otherRoomEnter:baseMessage];
            break;
        case ROOM_EXIT_INFO:
            //退出房间
            [self roomExit:baseMessage];
            break;
        case MATCH_BEGIN:
            //游戏开始
            [self matchBegin:baseMessage];
            break;
        case MATCH_ANTE_UP:
            //游戏押柱
            [self matchAnteUp:baseMessage];
            break;
        case MATCH_END_UP:
            //游戏结果
            [self matchEndUp:baseMessage];
            break;
        case SHOP_LIST:
            //商城列表
            [self shopList:baseMessage];
            break;
        case BUY_SHOP:
            //购买商品
            [self buyShop:baseMessage];
            break;
        case PRIZE_LIST:
            //奖品列表
            [self prizeList:baseMessage];
            break;
        case GET_PRIZE_METHOD:
            //领奖方法
            [self getPrizeMethod:baseMessage];
            break;
        case GET_PRIZE:
            //领取奖品
            [self getPrize:baseMessage];
            break;
        case RANK_LIST:
            //排名
            [self rankList:baseMessage];
            break;
        case LOTTERY_LIST:
            //抽奖列表
            [self lotteryList:baseMessage];
            break;
        case GET_LOTTERY:
            //抽奖
            [self getlottery:baseMessage];
            break;
        case ERROR_RES:
            //错误消息
            [self errorRes:baseMessage];
            break;

        default:
        NSLog(@"未处理的消息----%x", baseMessage.msgId);
            break;
    }
}


-(void)registerMessage:(FruitMessageProto *)baseMessage{
    UserRegisterRes *model = [UserRegisterRes parseFromData:baseMessage.content];
    NSLog(@"registerMessage...");
    [[NSNotificationCenter defaultCenter] postNotificationName:RegisterMessage object:model];
}

-(void)userThreeBindMessage:(FruitMessageProto *)baseMessage{
    UserThreeBindRes *model = [UserThreeBindRes parseFromData:baseMessage.content];
    NSLog(@"userThreeBindMessage...");
    [[NSNotificationCenter defaultCenter] postNotificationName:UserThreeBindMessage object:model];
}

-(void)userLogin:(FruitMessageProto *)baseMessage{
    UserLoginRes *model = [UserLoginRes parseFromData:baseMessage.content];
    NSLog(@"userLogin...");
    [[NSNotificationCenter defaultCenter] postNotificationName:UserLoginMessage object:model];
}

-(void)userAttributeChange:(FruitMessageProto *)baseMessage{
    UserAttributeChangeRes *model = [UserAttributeChangeRes parseFromData:baseMessage.content];
    NSLog(@"userAttributeChange...");
     [[NSNotificationCenter defaultCenter] postNotificationName:UserAttributeChangeMessage object:model];
}

-(void)roomList:(FruitMessageProto *)baseMessage{
    GetRoomListRes *model = [GetRoomListRes parseFromData:baseMessage.content];
    NSLog(@"roomList...");
    [[NSNotificationCenter defaultCenter] postNotificationName:RoomListMessage object:model];
}

-(void)enterRoomInfo:(FruitMessageProto *)baseMessage{
    EnterRoomRes *model = [EnterRoomRes parseFromData:baseMessage.content];
    NSLog(@"enterRoomInfo...");
    [[NSNotificationCenter defaultCenter] postNotificationName:EnterRoomMessage object:model];
}

-(void)roomAnteUpInfo:(FruitMessageProto *)baseMessage{
    RoomAnteRes *model = [RoomAnteRes parseFromData:baseMessage.content];
    NSLog(@"roomAnteUpInfo...");
    [[NSNotificationCenter defaultCenter] postNotificationName:RoomAnteUpMessage object:model];
}

-(void)roomTip:(FruitMessageProto *)baseMessage{
    RoomTipRes *model = [RoomTipRes parseFromData:baseMessage.content];
    NSLog(@"roomTip...");
    [[NSNotificationCenter defaultCenter] postNotificationName:RoomTipMessage object:model];
}

-(void)otherRoomEnter:(FruitMessageProto *)baseMessage{
    EnterRoomPushRes *model = [EnterRoomPushRes parseFromData:baseMessage.content];
    NSLog(@"otherRoomEnter...");
    [[NSNotificationCenter defaultCenter] postNotificationName:OtherEnterRoomMessage object:model];
}

-(void)roomExit:(FruitMessageProto *)baseMessage{
    RoomExitRes *model = [RoomExitRes parseFromData:baseMessage.content];
    NSLog(@"RoomExitRes...");
    [[NSNotificationCenter defaultCenter] postNotificationName:RoomExitMessage object:model];
}

-(void)matchBegin:(FruitMessageProto *)baseMessage{
    MatchListRes *model = [MatchListRes parseFromData:baseMessage.content];
    NSLog(@"matchBegin...");
    [[NSNotificationCenter defaultCenter] postNotificationName:MatchListMessage object:model];
}

-(void)matchAnteUp:(FruitMessageProto *)baseMessage{
    UserAnteUpRes *model = [UserAnteUpRes parseFromData:baseMessage.content];
    NSLog(@"matchAnteUp...");
    [[NSNotificationCenter defaultCenter] postNotificationName:UserAnteUpMessage object:model];
}

-(void)matchEndUp:(FruitMessageProto *)baseMessage{
    AnteUpResultRes *model = [AnteUpResultRes parseFromData:baseMessage.content];
    NSLog(@"matchEndUp...");
    [[NSNotificationCenter defaultCenter] postNotificationName:AnteUpResultMessage object:model];
}

-(void)shopList:(FruitMessageProto *)baseMessage{
    GetShopListRes *model = [GetShopListRes parseFromData:baseMessage.content];
    NSLog(@"shopList...");
    [[NSNotificationCenter defaultCenter] postNotificationName:ShopListMessage object:model];
}

-(void)buyShop:(FruitMessageProto *)baseMessage{
    BuyShopRes *model = [BuyShopRes parseFromData:baseMessage.content];
    NSLog(@"buyShop...");
    [[NSNotificationCenter defaultCenter] postNotificationName:BuyShopMessage object:model];
}

-(void)prizeList:(FruitMessageProto *)baseMessage{
    GetPrizeListRes *model = [GetPrizeListRes parseFromData:baseMessage.content];
    NSLog(@"prizeList...");
    [[NSNotificationCenter defaultCenter] postNotificationName:GetPrizeListMessage object:model];
}

-(void)getPrizeMethod:(FruitMessageProto *)baseMessage{
    GetPrizeMethodRes *model = [GetPrizeMethodRes parseFromData:baseMessage.content];
    NSLog(@"getPrizeMethod...");
    [[NSNotificationCenter defaultCenter] postNotificationName:GetPrizeMethodMessage object:model];
}

-(void)getPrize:(FruitMessageProto *)baseMessage{
    GetPrizeRes *model = [GetPrizeRes parseFromData:baseMessage.content];
    NSLog(@"getPrize...");
    [[NSNotificationCenter defaultCenter] postNotificationName:GetPrizeMessage object:model];
}

-(void)rankList:(FruitMessageProto *)baseMessage{
    GetRankListRes *model = [GetRankListRes parseFromData:baseMessage.content];
    NSLog(@"rankList...");
    [[NSNotificationCenter defaultCenter] postNotificationName:GetRankListMessage object:model];
}

-(void)lotteryList:(FruitMessageProto *)baseMessage{
     GetLotteryListRes *model = [GetLotteryListRes parseFromData:baseMessage.content];
    NSLog(@"lotteryList...");
    [[NSNotificationCenter defaultCenter] postNotificationName:GetLotteryListMessage object:model];
}

-(void)getlottery:(FruitMessageProto *)baseMessage{
    GetLotteryRes *model = [GetLotteryRes parseFromData:baseMessage.content];
    NSLog(@"getlottery...");
    [[NSNotificationCenter defaultCenter] postNotificationName:GetLotteryMessage object:model];
}

-(void)errorRes:(FruitMessageProto *)baseMessage{
    ErrorRes *model = [ErrorRes parseFromData:baseMessage.content];
    NSLog(@"status:%d",model.status);
    NSLog(@"category:%d",model.category);
    NSLog(@"title:%@",model.title);
    NSLog(@"tip:%@",model.tip);
    NSLog(@"errorRes...");
    [[NSNotificationCenter defaultCenter] postNotificationName:ErrorMessage object:model];
}









@end










































