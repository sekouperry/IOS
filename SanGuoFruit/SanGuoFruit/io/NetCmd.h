//
//  NetCmd.h
//  TestSocket
//
//  Created by LiuLiu on 12-8-13.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//


#define GAME_ID                     1
#define MSG_VER                     1



#define         BASE_ID         0x10000000              //基本操作消息头

#define         USER_ID         BASE_ID+0x00001000      //用户消息头

#define         ROOM_ID         BASE_ID+0x00002000      //房间消息头

#define         MATCH_ID        BASE_ID+0x00003000      //比赛消息头

#define         SHOP_ID         BASE_ID+0x00004000      //商城消息头

#define         PRIZE_ID        BASE_ID+0x00005000      //奖励消息头

#define         MESSAGE_ID      BASE_ID+0x00006000      //邮件消息头

#define         Lottery_ID      BASE_ID+0x00007000      //抽奖消息头

#define         RANK_ID         BASE_ID+0x00008000      //排名消息头


#define BASEID_SERVER_BUSY          BASEID + 19                         //服务器繁忙
#define GAMEID_SERVER_MSG           GAME_MSG_ID + 2                     //服务器消息
#define VERSION_CODE                0x0100005b
#define VARSION_STR                 @"1.0"
#define HEADER                      @"fruit"
#define CHANNEL_ID                  VERSION_CODE & 0xFFFF
#define PLATFORMCODE                1                                   //1:ios 2:android
#define LOGINCHANLEID               @"91"                               //渠道号

#define RECHARGECHANNEL              1                                 //1:appstore



#define USERID_REGISTER                 USER_ID+1       //新用户注册
#define USERID_BINDING                  USER_ID+2       //用户绑定
#define USERID_LOGIN                    USER_ID+3       //用户登陆
#define USERID_ATTRIBUTE_CHANGE         USER_ID+4       //用户属性变化

#define GET_ROOM_LIST                   ROOM_ID + 1     //得到房间列表
#define ENTER_ROOM_INFO                 ROOM_ID + 2     //进入房间
#define ROOM_ANTE_UP_INFO               ROOM_ID + 3     //房间推送玩家押注消息
#define ROOM_TIP                        ROOM_ID + 4     //房间飘字
#define ROOM_ENTER_INFO                 ROOM_ID + 5     //别人进入房间
#define ROOM_EXIT_INFO                  ROOM_ID + 6     //退出房间

#define MATCH_BEGIN                     MATCH_ID + 1     //游戏开始
#define MATCH_ANTE_UP                   MATCH_ID + 2     //比赛押注
#define MATCH_END_UP                    MATCH_ID + 3     //比赛结果

#define SHOP_LIST                       SHOP_ID + 1     //商城列表
#define BUY_SHOP                        SHOP_ID + 2     //购买商品

#define PRIZE_LIST                      PRIZE_ID + 1     //奖品列表
#define GET_PRIZE_METHOD                PRIZE_ID + 2     //领奖方法
#define GET_PRIZE                       PRIZE_ID + 3     //领取奖品

#define RANK_LIST                       RANK_ID + 1     //排名列表

#define LOTTERY_LIST                    Lottery_ID + 1  //抽奖列表
#define GET_LOTTERY                     Lottery_ID + 2  //抽奖

#define ERROR_RES                       BASE_ID + 1  //错误消息



