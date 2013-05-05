//
//  SocketController.m
//  TqLord
//
//  Created by LiuLiu on 12-8-16.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "SocketController.h"

//#import "NetCmd.h"

#import "MessageReceiver.h"
#import "MessageSender.h"
#import "AppConf.h"


#import "AppDelegate.h"
//#import "GameController.h"
//#import "LoginViewController.h"
//#import "LoadingViewController.h"
//#import "S91Manager.h"
//#import "Assistant.h"
//#import "UserInfo.h"

@interface SocketController(){
    
    NSMutableData *mData;
}


@end
@implementation SocketController

@synthesize socket;
@synthesize messageArr;
@synthesize isUserDisconnect;
static SocketController *socketController = nil;
+ (SocketController *)sharedMsgSender{
    if(!socketController){
        socketController = [[self alloc] init];
        
    }
    return socketController;
}
+ (id)allocWithZone:(NSZone *)zone{//防止任何类创建第二个实例
    @synchronized(self){//防止多个线程同时执行这段代码
        if(!socketController){
            socketController = [super allocWithZone:zone];
            return socketController;
        }
    }
    return nil;
}

- (id) init{
    if(self = [super init]){
        isUserDisconnect = YES;
        [self connectServer:HOST port:PORT];
    }
    return self;
}
- (int) connectServer:(NSString *) host port:(int) port{
    if(socket == nil){
        socket = [[AsyncSocket alloc] initWithDelegate:self];
        messageArr = [NSMutableArray new];
        isMessageEnabel = YES;
        NSError *err = nil;
        NSLog(@"正在连接...");
        if (![socket connectToHost:host onPort:port error:&err]){
            // If there was an error, it's likely something like "already connected" or "no delegate set"
            NSLog(@"Connect Error: %@", err);
            [self onSocketDidDisconnect: nil];
        }else {
            MessageSender *sender = [MessageSender sharedMsgSender];
            [sender initWithSocket:socket];
            [socket readDataWithTimeout:-1 tag:0];
        }
    }else{
        [socket readDataWithTimeout:-1 tag:0];
    }
    return 1;
}

-(void)connect{
    if(socket.isConnected == NO){
        self.socket = nil;
        [self connectServer:HOST port:PORT];
    }

}

-(void)disconnect{
    isUserDisconnect = YES;
    [self.socket disconnect];

}
//- (void)socket:(AsyncSocket *)sender didConnectToHost:(NSString *)host port:(UInt16)port{
//    NSLog(@"连接成功!----HOST:%@, PORT:%d", host, port);
//}
//- (void)socketDidDisconnect:(AsyncSocket *)sock withError:(NSError *)error{  
//    NSLog(@"Disconnected:%@", error);
//    self.socket = nil;
//    [self connectServer:HOST port:PORT];
//}
//- (void)socket:(AsyncSocket *)sender didReadData:(NSData *)data withTag:(long)tag{
//    //NSLog(@"%@", data);
//    BaseMessageModel *baseModel = [[[BaseMessageModel alloc] initWithdataAnalyse:data] autorelease];
//    
//    [[MessageReceiver sharedMsgReceiver] dispatchMsg:baseModel];
//    [socket readDataWithTimeout:-1 tag:0];
//    
//}
//- (void)socket:(AsyncSocket *)sock didReadPartialDataOfLength:(NSUInteger)partialLength tag:(long)tag{
//    
//}
//- (void)socket:(AsyncSocket *)sock didWriteDataWithTag:(long)tag{
//    //NSLog(@"----发送消息");
//}

//连接成功
- (void)onSocket:(AsyncSocket *)sock didConnectToHost:(NSString *)host port:(UInt16)port{
    NSLog(@"连接成功!----HOST:%@, PORT:%d", host, port);
    
    
//    [[MessageSender sharedMsgSender] registerSendMessageWithUserName:@"huanghe" password:@"11111111"];
    
    

}
//读数据
- (void)onSocket:(AsyncSocket *)sock didReadData:(NSData *)data withTag:(long)tag{

    
    [self dealData:data tag:1] ;
    
    
    [socket readDataWithTimeout:-1 tag:0];

}

-(void)dealData:(NSData *)data tag:(int)type{       //1为追加  0为不加
    
  
    if(mData == nil){
        mData = [NSMutableData new];
    }
    
    if(type == 1){
        [mData appendData:data];
    }
    
    if([mData length]<5){
        return;
    }
    
    //处理数据长度
    char *dataBytes = (char *)mData.bytes;
    int len = 0;
    int lenCount = 0;
    
    for(int i = 0;i<5;i++){
        char varint = dataBytes[i];
        if(varint > 0){
//            len = len<<7;
            len = len |((varint&0x7f)<<(7*i));
            lenCount = i+1;
            break;
        }
        else{
//            len = len<<7;
            len = len |((varint&0x7f)<<(7*i));
            
        }
    }
    
    long long allLen = len+lenCount;
    

    
    if([mData length]<allLen){
        return;
    }
    
    if([mData length] > allLen){
        Byte *bytes = (Byte *)[mData bytes];
        Byte *protoBufBytes = bytes + lenCount;
        
        NSMutableData *protoBufData = [[NSMutableData new] autorelease];
        [protoBufData appendBytes:protoBufBytes length:len];
        
        FruitMessageProto *baseModel = [FruitMessageProto parseFromData:protoBufData];

        [self pushMessage:baseModel];

        bytes = bytes+allLen;
        
        NSMutableData *newdata = [NSMutableData new];
        [newdata appendBytes:bytes length:[mData length]-allLen];
        
//        NSLog(@"dataLen %d - msgLen %d \n\n\n",[mData length],baseModel.msgLen);
        [mData release];
        mData = newdata;
        
        
        
        [self dealData:mData tag:0];
    }
    else{
        
        Byte *bytes = (Byte *)[mData bytes];
        Byte *protoBufBytes = bytes + lenCount;
        
        NSMutableData *protoBufData = [[NSMutableData new] autorelease];
        [protoBufData appendBytes:protoBufBytes length:len];
        
        FruitMessageProto *baseModel = [FruitMessageProto parseFromData:protoBufData];
        
        [self pushMessage:baseModel];

        [mData release];
        mData = nil;
        
    }
    

}
//断开连接
- (void)onSocketDidDisconnect:(AsyncSocket *)sock{
    NSLog(@"断开连接...");
    self.socket = nil;
    
//    if(isUserDisconnect == NO){
//        [self alertWithString:@"与服务器断开连接"];
//    }
//    
//    AppController *app = [UIApplication sharedApplication].delegate;
//    
//    
//    if( [app.navController visibleViewController] == [CCDirector sharedDirector] ){
//        [[GameController shareGameController] quitRoom:NO];
//    }
//    
//    int count = [app.navController.viewControllers count];
//    for(int i = 0;i<count-2;i++)
//    {
//        if(i >= count-3){
//             [app.navController popViewControllerAnimated:NO];
//        }
//        else{
//            [app.navController popViewControllerAnimated:NO];
//        }
//    }
//    
//    [UserInfo shareUserInfo].loginMessage = nil;
    [self connectServer:HOST port:PORT];
    

}


-(void)dealloc{
    [socket release];
    [messageArr release];
    [super dealloc];
}



-(void)pushMessage:(FruitMessageProto *)msg{
    @synchronized(self){
        [messageArr addObject:msg];
        
        [self popMessage];
    }

}

-(void)popMessage{
    
    @synchronized(self){
        if(isMessageEnabel){
            if([messageArr count]){
                FruitMessageProto *msg = [[messageArr objectAtIndex:0] retain];
                [messageArr removeObjectAtIndex:0];
                [[MessageReceiver sharedMsgReceiver] dispatchMsg:msg];
                
                
                [msg release];
                
                 [self popMessage];
            }
        }
    }
    

}

-(void)stopMessage{
    isMessageEnabel = NO;

}

-(void)startMessage{
    isMessageEnabel = YES;
    [self popMessage];

}
@end
