//
//  SGFDownObject.h
//  SanGuoFruit
//
//  Created by huang he on 13-4-7.
//  Copyright (c) 2013年 huang he. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SGFDownObject : NSObject{
    NSMutableArray *connectArray;
}
@property(nonatomic,retain)NSMutableArray *connectArray;

-(void)downWithURL:(NSString *)url;
@end
