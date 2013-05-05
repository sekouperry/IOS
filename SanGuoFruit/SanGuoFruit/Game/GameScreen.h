//
//  GameScreen.h
//  SanGuoFruit
//
//  Created by huang he on 13-4-7.
//  Copyright 2013年 huang he. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface GameScreen : CCSprite {
    NSMutableArray *itemArr;
    
}

@property(nonatomic,retain)NSMutableArray *itemArr;

@end
