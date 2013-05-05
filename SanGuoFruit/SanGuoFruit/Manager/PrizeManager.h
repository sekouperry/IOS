//
//  PrizeManager.h
//  SanGuoFruit
//
//  Created by huang he on 13-4-7.
//  Copyright (c) 2013年 huang he. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SGFDownObject.h"
@interface PrizeManager : SGFDownObject{
    NSMutableArray *list;
    
}
@property(nonatomic,retain)NSMutableArray *list;

+(PrizeManager *)share;

@end
