//
//  MessageSender.m
//  TestSocket
//
//  Created by LiuLiu on 12-8-14.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "MessageSender.h"
#import "ProtoBufferConf.h"
#import "NetCmd.h"
#import "SocketController.h"
#import "Assistant.h"

@implementation MessageSender

@synthesize socket;
static MessageSender *sender = nil;
+ (id)sharedMsgSender{
    if(!sender){
        sender = [[self alloc] init];
    }
    return sender;
}
+ (id)allocWithZone:(NSZone *)zone{//防止任何类创建第二个实例
    @synchronized(self){//防止多个线程同时执行这段代码
        if(!sender){
            sender = [super allocWithZone:zone];
            return sender;
        }
    }
    return nil;
}
- (void)initWithSocket:(AsyncSocket *)s{
    
    self.socket = s;
//    if(idleTimer){
//        [idleTimer invalidate];
//    }
//    idleTimer = [NSTimer scheduledTimerWithTimeInterval:10 target:self selector:@selector(idleReq) userInfo:nil repeats:YES];
    
}

-(NSData *)dealSendData:(NSData *)theData msgID:(int) theMsgID{
    FruitMessageProto_Builder *proto_builder = [FruitMessageProto builder];
    
    [proto_builder setMsgId:theMsgID];
    [proto_builder setUserId:0];
    [proto_builder setHeader:HEADER];
    [proto_builder setVersion:VARSION_STR];
    [proto_builder setContent:theData];
    
    FruitMessageProto *proto = [proto_builder build];
    
    NSData *protoData = [proto data];
    
    NSMutableData *sendData = [[[NSMutableData alloc] init] autorelease];
    
    int len = [protoData length];
    
    char buf[5];
    int lenCount = 0;
    for(int i = 0; i<5; i++){
        if(len > 127){
            buf[i] = (0x0000007f&len);
            len = len>>7;
            lenCount++;
        }
        else{
            buf[i] = len;
            lenCount++;
            break;
        }
    }
    
    NSMutableData *lenData = [[[NSMutableData alloc] init] autorelease];
    for(int i = 0 ;i<lenCount ;i++ ){
        if(i == lenCount-1){
            
            [lenData appendBytes:buf+i length:1];
        }
        else{
            buf[i] = buf[i]|0x80;
            [lenData appendBytes:buf+i length:1];
        }
    }
    
    [sendData appendData:lenData];
    [sendData appendData:protoData];
    
    
    
    
    
    return sendData;
}

/**
 * 心跳
 */



/**
 * 注册
 */
-(void)registerSendMessageWithUserName:(NSString *)theUserName password:(NSString *)thePassword{

    
    UserRegisterReq_Builder *model_nuilder= [UserRegisterReq builder];
    [model_nuilder setUserName:theUserName];
    [model_nuilder setPassword:thePassword];
	[model_nuilder setUuid:[Assistant macaddress]];
    [model_nuilder setVersionCode:VERSION_CODE];
    [model_nuilder setRobotModel:0];
    [model_nuilder setPlatformCode:PLATFORMCODE];
    
    UserRegisterReq *model = [model_nuilder build];
    
    NSData *modelData = [model data];
    NSData *sendData =  [self dealSendData:modelData msgID:USERID_REGISTER];
    
    [socket writeData:sendData withTimeout:-1 tag:0];
    [socket readDataWithTimeout:-1 tag:0];
}


/**
 * 第三方绑定 
 */
-(void)userThreeBindWithUserId:(int32_t)userId shareType:(int32_t)shareType shareId:(NSString *)shareId accessToken:(NSString *)accessToken refreshToken:(NSString *)refreshToken{
    
    
    UserThreeBindReq_Builder *model_builder= [UserThreeBindReq builder];
    [model_builder setUserId:userId];
    [model_builder setShareType:shareType];
	[model_builder setShareId:shareId];
    [model_builder setAccessToken:accessToken];
    [model_builder setRefreshToken:refreshToken];
   
    
    UserThreeBindReq *model = [model_builder build];
    
    NSData *modelData = [model data];
    NSData *sendData =  [self dealSendData:modelData msgID:USERID_BINDING];
    
    [socket writeData:sendData withTimeout:-1 tag:0];
    [socket readDataWithTimeout:-1 tag:0];
}

-(void)userLoginWithUserName:(NSString *)username password:(NSString *)password{
    UserLoginReq_Builder *model_builder= [UserLoginReq builder];
    [model_builder setUserName:username];
    [model_builder setPassword:password];
	[model_builder setUuid:[Assistant macaddress]];
    [model_builder setVersionCode:VERSION_CODE];

    [model_builder setPlatformCode:PLATFORMCODE];
    
    UserLoginReq *model = [model_builder build];
    
    NSData *modelData = [model data];
    NSData *sendData =  [self dealSendData:modelData msgID:USERID_LOGIN];
    
    [socket writeData:sendData withTimeout:-1 tag:0];
    [socket readDataWithTimeout:-1 tag:0];


}

-(void)roomListWithRoomId:(long long)roomId count:(int)count{
    GetRoomListReq_Builder *model_builder= [GetRoomListReq builder];
    [model_builder setRoomId:roomId];
    [model_builder setCount:count];
	
    
    GetRoomListReq *model = [model_builder build];
    
    NSData *modelData = [model data];
    NSData *sendData =  [self dealSendData:modelData msgID:GET_ROOM_LIST];
    
    [socket writeData:sendData withTimeout:-1 tag:0];
    [socket readDataWithTimeout:-1 tag:0];

}

-(void)enterRoomWithRoomId:(int)roomId{
    EnterRoomReq_Builder *model_builder= [EnterRoomReq builder];
    [model_builder setRoomId:roomId];
    EnterRoomReq *model = [model_builder build];
    
    NSData *modelData = [model data];
    NSData *sendData =  [self dealSendData:modelData msgID:ENTER_ROOM_INFO];
    
    [socket writeData:sendData withTimeout:-1 tag:0];
    [socket readDataWithTimeout:-1 tag:0];

}

-(void)roomExitWithRoomId:(int)roomId{
    RoomExitReq_Builder *model_builder= [RoomExitReq builder];
    [model_builder setRoomId:roomId];
    RoomExitReq *model = [model_builder build];
    
    NSData *modelData = [model data];
    NSData *sendData =  [self dealSendData:modelData msgID:ROOM_EXIT_INFO];
    
    [socket writeData:sendData withTimeout:-1 tag:0];
    [socket readDataWithTimeout:-1 tag:0];
}

-(void)matchAnteUpWithRoomId:(int)roomId deskId:(int)deskId antes:(NSArray *)antes{
    MatchAnteUpReq_Builder *model_builder= [MatchAnteUpReq builder];
    [model_builder setRoomId:roomId];
    [model_builder setDeskId:deskId];
    [model_builder addAllAnteRatio:antes];
    MatchAnteUpReq *model = [model_builder build];
    
    NSData *modelData = [model data];
    NSData *sendData =  [self dealSendData:modelData msgID:MATCH_ANTE_UP];
    
    [socket writeData:sendData withTimeout:-1 tag:0];
    [socket readDataWithTimeout:-1 tag:0];

}

-(void)shopListWithShopId:(int)shopId count:(int)count{
    GetShopListReq_Builder *model_builder= [GetShopListReq builder];
    [model_builder setShopId:shopId];
    [model_builder setChannelId:RECHARGECHANNEL];
    
    GetShopListReq *model = [model_builder build];
    
    NSData *modelData = [model data];
    NSData *sendData =  [self dealSendData:modelData msgID:SHOP_LIST];
    
    [socket writeData:sendData withTimeout:-1 tag:0];
    [socket readDataWithTimeout:-1 tag:0];

}

-(void)buyShopWithShopId:(int)shopId channelId:(int)channelId sign:(NSString *)sign{
    
    BuyShopReq_Builder *model_builder= [BuyShopReq builder];
    [model_builder setShopId:shopId];
    [model_builder setChannelId:channelId];
    [model_builder setSign:sign];
    
    BuyShopReq *model = [model_builder build];
    
    NSData *modelData = [model data];
    NSData *sendData =  [self dealSendData:modelData msgID:BUY_SHOP];
    
    [socket writeData:sendData withTimeout:-1 tag:0];
    [socket readDataWithTimeout:-1 tag:0];

}

-(void)prizeListWithPrizeId:(long long)prizeId count:(int)count{
    GetPrizeListReq_Builder *model_builder= [GetPrizeListReq builder];
    [model_builder setPrizeId:prizeId];
    [model_builder setCount:count];
    GetPrizeListReq *model = [model_builder build];
    
    NSData *modelData = [model data];
    NSData *sendData =  [self dealSendData:modelData msgID:PRIZE_LIST];
    
    [socket writeData:sendData withTimeout:-1 tag:0];
    [socket readDataWithTimeout:-1 tag:0];

}

-(void)getPrizeMethodWithPrizeId:(long long)prizeId{
    GetPrizeMethodReq_Builder *model_builder= [GetPrizeMethodReq builder];
    [model_builder setPrizeId:prizeId];
    GetPrizeMethodReq *model = [model_builder build];
    
    NSData *modelData = [model data];
    NSData *sendData =  [self dealSendData:modelData msgID:GET_PRIZE_METHOD];
    
    [socket writeData:sendData withTimeout:-1 tag:0];
    [socket readDataWithTimeout:-1 tag:0];
}

-(void)getPrizeWithPrizeId:(long long)prizeId type:(int)type{
    GetPrizeReq_Builder *model_builder= [GetPrizeReq builder];
    [model_builder setPrizeId:prizeId];
    [model_builder setTypes:type];
    GetPrizeReq *model = [model_builder build];
    
    NSData *modelData = [model data];
    NSData *sendData =  [self dealSendData:modelData msgID:GET_PRIZE];
    
    [socket writeData:sendData withTimeout:-1 tag:0];
    [socket readDataWithTimeout:-1 tag:0];

}

-(void)rankListWithRank:(int)rank count:(int)count{
    GetRankListReq_Builder *model_builder= [GetRankListReq builder];
    [model_builder setRank:rank];
    [model_builder setCount:count];
    GetRankListReq *model = [model_builder build];
    
    NSData *modelData = [model data];
    NSData *sendData =  [self dealSendData:modelData msgID:RANK_LIST];
    
    [socket writeData:sendData withTimeout:-1 tag:0];
    [socket readDataWithTimeout:-1 tag:0];

}

-(void)lotteryList{
    GetLotteryListReq_Builder *model_builder= [GetLotteryListReq builder];
    
    GetLotteryListReq *model = [model_builder build];
    
    NSData *modelData = [model data];
    NSData *sendData =  [self dealSendData:modelData msgID:LOTTERY_LIST];
    
    [socket writeData:sendData withTimeout:-1 tag:0];
    [socket readDataWithTimeout:-1 tag:0];
}

-(void)getLotteryWithLotteryId:(int)lotteryId{
    GetLotteryReq_Builder *model_builder= [GetLotteryReq builder];
    [model_builder setLotteryId:lotteryId];
    GetLotteryReq *model = [model_builder build];
    
    NSData *modelData = [model data];
    NSData *sendData =  [self dealSendData:modelData msgID:GET_LOTTERY];
    
    [socket writeData:sendData withTimeout:-1 tag:0];
    [socket readDataWithTimeout:-1 tag:0];

}











-(void)dealloc{
    [socket release];
    [super dealloc];
}

@end






















