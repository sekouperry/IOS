//
//  Assistant.h
//  TqLord
//
//  Created by huang he on 12-11-12.
//  Copyright (c) 2012年 huang he. All rights reserved.
//11

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
//#import "NSObject+Alert.h"
#import "Reachability.h"
#import "cocos2d.h"


@interface Assistant : NSObject{

}

+(void)alertContent:(NSString*)content title:(NSString *)title; //警告
+(NSString *) macaddress;                                       //得到mac地址
//+(NSString *) imei;                                       //得到IMEI


+(UIImage *)getImageWithURL:(NSString *)thePath;                    //得到图片
+(void)saveImageWithURL:(NSString *)thePath data:(NSData *)data;    //储存图片

+(UIView *)getNumImageWith:(long long)num width:(float)width height:(float)height;//通过数字，得到数字图片 结算

+(UIView *)getJinNumImageWith:(long long)num width:(float)width height:(float)height;//通过数字，得到数字图片 金色
+(UIView *)redNumImageWith:(long long)num width:(float)width height:(float)height;//通过数字，得到数字图片 红色

+(CCSprite *)getCardNumWith:(int)num;         //剩余牌数
+(CCSprite *)getJinNumWith:(int)num;         //金色
+(CCSprite *)getRedNumWith:(int)num;

+(UIView *)getTimesImageWith:(long long)num;//得到总倍数

+(UIView *)getStarImageWithCurrentStar:(int)currentStar taskStar:(int)taskStar;//得到星级图

+ (NSString *)currentNetType;
+ (BOOL)isNetConnectValid;

+ (NSString *)yunying;      //电话运营商

+ (NSString *)uuid;

//+ (NSString *)orderid;
//
//
//+ (NSArray *)orderList;
//+ (void)addOrder:(NSDictionary *) orderInfo;
//+(void)removeOrder:(NSDictionary *) orderInfo;
//
//+(CCSprite *)getTime;

+(UIImage *)getSmallPicture:(UIImage *)theImage;            //得到小图

@end
