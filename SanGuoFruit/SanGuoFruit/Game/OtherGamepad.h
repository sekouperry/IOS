//
//  OtherGamepad.h
//  SanGuoFruit
//
//  Created by huang he on 13-4-7.
//  Copyright 2013年 huang he. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface OtherGamepad : CCSprite {
    
    CCSprite *touXiang;
    NSMutableArray *yaZhuImageArr;
    NSMutableArray *yaZhuNumArr;
    
}
@property(nonatomic,retain)CCSprite *touXiang;
@property(nonatomic,retain)NSMutableArray *yaZhuImageArr;
@property(nonatomic,retain)NSMutableArray *yaZhuNumArr;

@end
