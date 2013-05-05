//
//  OtherGamepad.m
//  SanGuoFruit
//
//  Created by huang he on 13-4-7.
//  Copyright 2013年 huang he. All rights reserved.
//

#import "OtherGamepad.h"


@implementation OtherGamepad
@synthesize touXiang;
@synthesize yaZhuImageArr;
@synthesize yaZhuNumArr;

-(id)init{
    self = [super initWithFile:@"game_otherPlayer_1@2x.png"];
    
    if(self){
        
        yaZhuImageArr = [NSMutableArray new];
        yaZhuNumArr = [NSMutableArray new];
        
        self.touXiang = [CCSprite spriteWithFile:@"game_otherPlayer_2@2x.png"];
        touXiang.anchorPoint = ccp(0, 1.0);
        touXiang.position = ccp(5, self.contentSize.height-5);
        [self addChild:touXiang];
        
        for (int i = 0;i< 10; i++) {
            CCSprite *sprite = [CCSprite spriteWithFile:@"game_otherPlayer_3@2x.png"];
            sprite.anchorPoint = ccp(0, 1.0);
            sprite.position = ccp(7+25*(i%5), self.contentSize.height- 50 -25 * (i/5));
            
            [yaZhuImageArr addObject:sprite];
            [self addChild:sprite];
        }
        
        
        
    }
    return self;
}

-(void)dealloc{
    [touXiang release];
    [yaZhuImageArr release];
    [yaZhuNumArr release];
    [super dealloc];

}





@end
