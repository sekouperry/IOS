//
//  GameTable.h
//  SanGuoFruit
//
//  Created by huang he on 13-4-7.
//  Copyright 2013年 huang he. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

#import "OwnGamepad.h"
#import "OtherGamepad.h"
#import "GameScreen.h"

@interface GameTable : CCLayer {
    OwnGamepad *ownGamepad;
    
    OtherGamepad *otherPlayer1;
    OtherGamepad *otherPlayer2;
    OtherGamepad *otherPlayer3;
    
    GameScreen *gameScreen;
    
}
@property(nonatomic,retain)OwnGamepad *ownGamepad;
@property(nonatomic,retain)OtherGamepad *otherPlayer1;
@property(nonatomic,retain)OtherGamepad *otherPlayer2;
@property(nonatomic,retain)OtherGamepad *otherPlayer3;
@property(nonatomic,retain)GameScreen *gameScreen;
+(CCScene *) scene;
@end
