//
//  PlayerInfo.m
//  SanGuoFruit
//
//  Created by huang he on 13-4-7.
//  Copyright (c) 2013年 huang he. All rights reserved.
//

#import "PlayerInfo.h"

@implementation PlayerInfo
@synthesize experience;         
@synthesize nextExperience;     
@synthesize coin;               
@synthesize userId;             
@synthesize rank;               
@synthesize lottery;           
@synthesize vip;                
@synthesize userName;         
@synthesize photoUrl;         


-(void)dealloc{
    [userName release];
    [photoUrl release];
    [super dealloc];
}
@end
