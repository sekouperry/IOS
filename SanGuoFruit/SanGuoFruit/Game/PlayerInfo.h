//
//  PlayerInfo.h
//  SanGuoFruit
//
//  Created by huang he on 13-4-7.
//  Copyright (c) 2013年 huang he. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlayerInfo : NSObject{
    int64_t experience;         //当前经验
    int64_t nextExperience;     //下一级经验
    int64_t coin;               //金币
    int32_t userId;             //用户Id
    int32_t rank;               //等级
    int32_t lottery;            //彩券数
    int32_t vip;                //vip等级
    NSString* userName;         //用户昵称
    NSString* photoUrl;         //用户头像

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

@end
