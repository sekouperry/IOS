//
//  UserInfoManager.h
//  SanGuoFruit
//
//  Created by huang he on 13-4-7.
//  Copyright (c) 2013年 huang he. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserInfoManager : NSObject{
    int64_t experience;             //当前经验值
    int64_t nextExperience;         //下一级经验
    int64_t coin;                   //金币
    int32_t userId;                 //用户id
    int32_t rank;                   //等级
    int32_t lottery;                //彩券数量
    int32_t vip;                    //vip级别
    NSString* userName;             //用户名
    NSString* photoUrl;             //用户头像
    NSString* password;             //密码
    
}
@property(nonatomic,assign)int64_t experience;             
@property(nonatomic,assign)int64_t nextExperience;         
@property(nonatomic,assign)int64_t coin;                   
@property(nonatomic,assign)int32_t userId;                 
@property(nonatomic,assign)int32_t rank;                   
@property(nonatomic,assign)int32_t lottery;                
@property(nonatomic,assign)int32_t vip;                    
@property(nonatomic,retain)NSString* userName;             
@property(nonatomic,retain)NSString* photoUrl;             
@property(nonatomic,retain)NSString* password;


+(UserInfoManager *)share;


@end
