//
//  UserInfoManager.m
//  SanGuoFruit
//
//  Created by huang he on 13-4-7.
//  Copyright (c) 2013年 huang he. All rights reserved.
//

#import "UserInfoManager.h"


static UserInfoManager *userInfoManager = nil;
@implementation UserInfoManager
@synthesize experience;
@synthesize nextExperience;
@synthesize coin;
@synthesize userId;
@synthesize rank;
@synthesize lottery;
@synthesize vip;
@synthesize userName;
@synthesize photoUrl;
@synthesize password;

+(UserInfoManager *)share{
    if(userInfoManager == nil){
        userInfoManager = [[UserInfoManager alloc] init];
    }
    return userInfoManager;
}
-(id)init{
    self = [super init];
    if (self) {
        
    }
    return self;
}

-(void)dealloc{
    [userName release];
    [photoUrl release];
    [password release];
    [super dealloc];
}

@end
