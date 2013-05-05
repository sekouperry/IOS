//
//  GameTable.m
//  SanGuoFruit
//
//  Created by huang he on 13-4-7.
//  Copyright 2013年 huang he. All rights reserved.
//

#import "GameTable.h"
#import "GameContorller.h"


@implementation GameTable
@synthesize ownGamepad;
@synthesize otherPlayer1;
@synthesize otherPlayer2;
@synthesize otherPlayer3;
@synthesize gameScreen;

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	GameTable *layer = [GameTable node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

// on "init" you need to initialize your instance
-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super's" return value
	if( (self=[super init]) ) {
		
		
		[GameContorller share].gameTable = self;
        
        CCMenuItem *menuItem = [CCMenuItemLabel itemWithLabel:[CCLabelTTF labelWithString:@"返回" fontName:@"Marker Felt" fontSize:20] target:[GameContorller share] selector:@selector(onBttonBack:)];
//        menuItem.anchorPoint = ccp(0, 0);
//        menuItem.position = ccp(0, 0);
        
        CCMenu *menu = [CCMenu menuWithItems:menuItem, nil];
        menu.anchorPoint = ccp(0, 1);
        menu.position = ccp(20, 320-20);
        [self addChild: menu];
        
        ownGamepad = [[OwnGamepad alloc] init];
        [self addChild: ownGamepad];
        
        otherPlayer1 = [[OtherGamepad alloc] init];
        otherPlayer1.anchorPoint = ccp(0, 1);
        otherPlayer1.position = ccp(345, 320-5);
        [self addChild: otherPlayer1];
        
        otherPlayer2 = [[OtherGamepad alloc] init];
        otherPlayer2.anchorPoint = ccp(0, 1);
        otherPlayer2.position = ccp(345, 320-5 - 105);
        [self addChild: otherPlayer2];
        
        otherPlayer3 = [[OtherGamepad alloc] init];
        otherPlayer3.anchorPoint = ccp(0, 1);
        otherPlayer3.position = ccp(345, 320-5-210);
        [self addChild: otherPlayer3];
		

		gameScreen = [[GameScreen alloc] init];
        [self addChild: gameScreen];
        
	}
	return self;
}

// on "dealloc" you need to release all your retained objects
- (void) dealloc
{
    
    [GameContorller share].gameTable = nil;
	// in case you have something to dealloc, do it in this method
	// in this particular example nothing needs to be released.
	// cocos2d will automatically release all the children (Label)
	
	// don't forget to call "super dealloc"
    [ownGamepad release];
    [otherPlayer1 release];
    [otherPlayer2 release];
    [otherPlayer3 release];
    [gameScreen release];
	[super dealloc];
}
@end
