//
//  OwnGamepad.m
//  SanGuoFruit
//
//  Created by huang he on 13-4-7.
//  Copyright 2013年 huang he. All rights reserved.
//

#import "OwnGamepad.h"
#import "GameContorller.h"


@implementation OwnGamepad


@synthesize buttonMenu;

@synthesize fenShuoLabelArr;
@synthesize yaZhuLabelArr;

-(id)init{
    self = [super initWithFile:@"game_player_1@2x.png"];
    if(self){
        
        fenShuoLabelArr = [NSMutableArray new];
        yaZhuLabelArr = [NSMutableArray new];
        

        
        self.position = ccp(self.contentSize.width /2, self.contentSize.height/2);
       
        
        for(int i = 0 ;i<6 ;i++){
            CCLabelTTF *label = [CCLabelTTF labelWithString:@"0" fontName:@"Marker Felt" fontSize:15];
            label.position = ccp(2+42*i, 0);
            label.anchorPoint = ccp(0, 0);
            label.dimensions = CGSizeMake(40, 20);
            label.horizontalAlignment = kCCTextAlignmentCenter;
            [yaZhuLabelArr addObject:label];
            [self addChild:label];
        }
        
        for(int i = 0 ;i<6 ;i++){
            CCLabelTTF *label = [CCLabelTTF labelWithString:[NSString stringWithFormat:@"%d",(i+1)*5] fontName:@"Marker Felt" fontSize:15];
            label.position = ccp(2+42*i, 57);
            label.anchorPoint = ccp(0, 0);
            label.dimensions = CGSizeMake(40, 20);
            label.horizontalAlignment = kCCTextAlignmentCenter;
            [fenShuoLabelArr addObject:label];
            [self addChild:label];
        }
        
        
        
        NSMutableArray *buttonArr = [[[NSMutableArray alloc] init] autorelease];
        
        for(int i = 0;i<7 ; i++){
            CCMenuItemSprite *button = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"game_player_2@2x.png"] selectedSprite:[CCSprite spriteWithFile:@"game_player_3@2x.png"] target:[GameContorller share] selector:@selector(onButtonYaZhu:)];
            button.tag = i;
            [buttonArr addObject:button];
        
        }
        
        
        self.buttonMenu = [CCMenu menuWithArray:buttonArr];
        [buttonMenu alignItemsHorizontallyWithPadding:2];
        buttonMenu.position = ccp(self.contentSize.width/2-23, self.contentSize.height/2);
        [self addChild:buttonMenu];
        
    }
    return self;
}

-(void)dealloc{
    [buttonMenu release];
    
    [fenShuoLabelArr release];
    [yaZhuLabelArr release];
    [super dealloc];

}

-(void)setYaZhuWithTag:(int)theTag num:(int)theNum{
    CCLabelTTF *label = [yaZhuLabelArr objectAtIndex:theTag];
    [label setString:[NSString stringWithFormat:@"%d",theNum]];
    
}

@end
