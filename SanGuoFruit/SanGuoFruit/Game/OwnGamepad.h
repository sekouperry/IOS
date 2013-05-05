//
//  OwnGamepad.h
//  SanGuoFruit
//
//  Created by huang he on 13-4-7.
//  Copyright 2013年 huang he. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface OwnGamepad : CCSprite {
   
    NSMutableArray *fenShuoLabelArr;
    NSMutableArray *yaZhuLabelArr;
    
    CCMenu *buttonMenu;
    
}

@property(nonatomic,retain)CCMenu *buttonMenu;

@property(nonatomic,retain)NSMutableArray *fenShuoLabelArr;
@property(nonatomic,retain)NSMutableArray *yaZhuLabelArr;

-(void)setYaZhuWithTag:(int)theTag num:(int)theNum;

@end
