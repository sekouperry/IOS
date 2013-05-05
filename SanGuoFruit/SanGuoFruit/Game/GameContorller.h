//
//  GameContorller.h
//  SanGuoFruit
//
//  Created by huang he on 13-4-7.
//  Copyright (c) 2013年 huang he. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameTable.h"

@interface GameContorller : NSObject{
    GameTable *gameTable;
    int32_t roomId;
    int32_t deskId;
    NSMutableArray *personList;
    
    NSMutableArray *yazhuNumArr;
}
@property(nonatomic,assign)GameTable *gameTable;
@property(nonatomic,assign)int32_t roomId;
@property(nonatomic,assign)int32_t deskId;
@property(nonatomic,retain)NSMutableArray *personList;
@property(nonatomic,retain)NSMutableArray *yazhuNumArr;
+(GameContorller *)share;

@end
