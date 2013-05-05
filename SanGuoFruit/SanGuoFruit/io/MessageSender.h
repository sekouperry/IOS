//
//  MessageSender.h
//  TestSocket
//
//  Created by LiuLiu on 12-8-14.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AsyncSocket.h"
@interface MessageSender : NSObject{
    AsyncSocket *socket;
    NSTimer *idleTimer;
}
@property(nonatomic,retain) AsyncSocket *socket;
+ (MessageSender *)sharedMsgSender;
- (void)initWithSocket:(AsyncSocket *)s;


//注册
-(void)registerSendMessageWithUserName:(NSString *)theUserName password:(NSString *)thePassword;

//第三方绑定
-(void)userThreeBindWithUserId:(int32_t)userId shareType:(int32_t)shareType shareId:(NSString *)shareId accessToken:(NSString *)accessToken refreshToken:(NSString *)refreshToken;

//登录
-(void)userLoginWithUserName:(NSString *)username password:(NSString *)password;

//得到房间列表
//roomId:时间戳 0表示获得最新
//count:获得数量
-(void)roomListWithRoomId:(long long)roomId count:(int)count;


//进入房间
-(void)enterRoomWithRoomId:(int)roomId;

//退出房间
-(void)roomExitWithRoomId:(int)roomId;

//比赛压住
-(void)matchAnteUpWithRoomId:(int)roomId deskId:(int)deskId antes:(NSArray *)antes;


//得到商品列表
//shopId:商品id 获得全部时为0
//count:数目

-(void)shopListWithShopId:(int)shopId count:(int)count;

//购买商品
//shopId:商品id 
//channelId:渠道
//sign:签名
-(void)buyShopWithShopId:(int)shopId channelId:(int)channelId sign:(NSString *)sign;

//奖品列表
//prizeId:奖品id 0 获得最新奖励
//count: 数目
-(void)prizeListWithPrizeId:(long long)prizeId count:(int)count;

//领奖方法
-(void)getPrizeMethodWithPrizeId:(long long)prizeId;

//领取奖品
-(void)getPrizeWithPrizeId:(long long)prizeId type:(int)type;

//排名
//rank:排名 0 获得最新排名
//count:数目
-(void)rankListWithRank:(int)rank count:(int)count;


//抽奖列表
-(void)lotteryList;

//抽奖
-(void)getLotteryWithLotteryId:(int)lotteryId;



@end
