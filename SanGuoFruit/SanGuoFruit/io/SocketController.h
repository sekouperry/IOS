//
//  SocketController.h
//  TqLord
//
//  Created by LiuLiu on 12-8-16.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "BaseMessageModel.h"
#import "Friut.pb.h"
#import "AsyncSocket.h"
@interface SocketController : NSObject{
    NSMutableArray *messageArr;         //消息列队
    BOOL isMessageEnabel;
    AsyncSocket *socket;
    BOOL isUserDisconnect;
}
@property(nonatomic,retain)NSMutableArray *messageArr;
@property(nonatomic,retain)AsyncSocket *socket;
@property(nonatomic,assign)BOOL isUserDisconnect;

-(void)pushMessage:(FruitMessageProto *)msg;         //加消息
-(void)popMessage;                    //解析消息
-(void)stopMessage;                                 //停止解析消息
-(void)startMessage;                                //开始解析消息

+ (SocketController *)sharedMsgSender;
-(void)connect;
-(void)disconnect;

-(void)dealData:(NSData *)data tag:(int)type;
@end
