//
//  MessageReceiver.h
//  TestSocket
//
//  Created by LiuLiu on 12-8-14.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NetCmd.h"
#import "ProtoBufferConf.h"

#define RegisterMessage                             @"registerMessage"
#define UserThreeBindMessage                        @"userThreeBindMessage"
#define UserLoginMessage                            @"userLoginMessage"
#define UserAttributeChangeMessage                  @"userAttributeChangeMessage"
#define RoomListMessage                             @"roomListMessage"
#define EnterRoomMessage                            @"enterRoomMessage"
#define RoomAnteUpMessage                           @"roomAnteUpMessage"
#define RoomTipMessage                              @"roomTipMessage"
#define OtherEnterRoomMessage                       @"otherEnterRoomMessage"
#define RoomExitMessage                             @"roomExitMessage"
#define MatchListMessage                            @"matchListMessage"
#define UserAnteUpMessage                           @"userAnteUpMessage"
#define AnteUpResultMessage                         @"anteUpResultMessage"
#define ShopListMessage                             @"shopListMessage"
#define BuyShopMessage                              @"buyShopMessage"
#define GetPrizeListMessage                         @"getPrizeListMessage"
#define GetPrizeMethodMessage                       @"getPrizeMethodMessage"
#define GetPrizeMessage                             @"getPrizeMessage"
#define GetRankListMessage                          @"getRankListMessage"
#define GetLotteryListMessage                       @"getLotteryListMessage"
#define GetLotteryMessage                           @"getLotteryMessage"
#define ErrorMessage                                @"errorMessage"




@interface MessageReceiver : NSObject{

}
+ (id)sharedMsgReceiver;

- (void)dispatchMsg:(FruitMessageProto *)baseMessage;
@end
