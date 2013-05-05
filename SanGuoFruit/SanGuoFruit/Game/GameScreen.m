//
//  GameScreen.m
//  SanGuoFruit
//
//  Created by huang he on 13-4-7.
//  Copyright 2013年 huang he. All rights reserved.
//

#import "GameScreen.h"


@implementation GameScreen
@synthesize itemArr;

-(id)init{
    self = [super initWithFile:@"game_screen_1@2x.png"];
    
    if(self){
        
        self.anchorPoint = ccp(0,1);
        self.position = ccp(0, 320);
        
        itemArr = [NSMutableArray new];
        for(int i = 0; i < 20 ; i++){
            
            CCSprite *sprite = [CCSprite spriteWithFile:@"game_screen_2@2x.png"];
            sprite.anchorPoint = ccp(0,1);
            if(i<7){
                sprite.position = ccp(13 +45*i, self.contentSize.height-35);
            }
            else if(i<11){
                 sprite.position = ccp(13 +45*6, self.contentSize.height-35 -(i-6)*39);
            
            }
            else if(i<17){
                sprite.position = ccp(13 +45*(16-i), self.contentSize.height-35 -(11-7)*39);
            }
            else{
                sprite.position = ccp(13 , self.contentSize.height-35 -(20-i)*39);
            
            }
            
            [itemArr addObject:sprite];
            [self addChild:sprite];
        
        }
        
        
        
    }
    return self;
}

-(void)dealloc{
    [itemArr release];
    [super dealloc];
}

@end
