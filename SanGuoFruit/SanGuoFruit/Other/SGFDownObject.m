//
//  SGFDownObject.m
//  SanGuoFruit
//
//  Created by huang he on 13-4-7.
//  Copyright (c) 2013年 huang he. All rights reserved.
//

#import "SGFDownObject.h"
#import "URLConnect.h"
#import "Assistant.h"

@implementation SGFDownObject

@synthesize connectArray;

-(id)init{
    self = [super init];
    if(self){
        connectArray = [NSMutableArray new];
    }
    return self;
}

-(void)dealloc{
    for(URLConnect *cur in connectArray){
        [cur cancel];
    }
    [connectArray release];
    [super dealloc];
}

-(void)downWithURL:(NSString *)url{
    UIImage *image  = [Assistant getImageWithURL:url];
    if(image == nil){
        NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:url]];
        
        
        URLConnect *connection = [URLConnect connectionWithRequest:request delegate:self userInfo:[NSDictionary dictionaryWithObjectsAndKeys:url,@"url",nil]];
        
        
        [connectArray addObject:connection];
        //        NSLog(@"%@",connectArray);
        [connection start];
    }
}

- (void)connectionDidFinishLoading:(URLConnect *)connection data:(NSData *)data userInfo:(NSDictionary *)userInfo{
    
    
    //    NSIndexPath *path = [userInfo objectForKey:@"path"];
    //    RoomNewModel *model = [messageReceive.roomList objectAtIndex:path.row];
    
    NSString *url = [userInfo objectForKey:@"url"];
    UIImage *image = [UIImage imageWithData:data];
    
    if(image){
        [Assistant saveImageWithURL:url data:data];
    }
    else{
        
    }
    
    [connectArray removeObject:connection];
}


@end
