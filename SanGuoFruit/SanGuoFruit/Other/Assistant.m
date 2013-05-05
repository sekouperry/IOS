//
//  Assistant.m
//  TqLord
//
//  Created by huang he on 12-11-12.
//  Copyright (c) 2012年 huang he. All rights reserved.
//


#import "Assistant.h"
//#import <Message/NetworkController.h>

//#import "network.h"
#include <sys/types.h>
#include <sys/sysctl.h>
#import <mach/mach_host.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <netdb.h>
#include <ifaddrs.h>
#include <sys/socket.h>
#include <net/if.h>
#include <net/if_dl.h>
#include <ifaddrs.h>

#import <CoreTelephony/CTTelephonyNetworkInfo.h>
#import <CoreTelephony/CTCarrier.h>










@implementation Assistant

+(void)alertContent:(NSString*)content title:(NSString *)title{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:content delegate:nil cancelButtonTitle:@"确认" otherButtonTitles: nil];
    [alert show];
    [alert release];
}
+(NSString *) macaddress{
    
    
    int                    mib[6];
    size_t                len;
    char                *buf;
    unsigned char        *ptr;
    struct if_msghdr    *ifm;
    struct sockaddr_dl    *sdl;
    mib[0] = CTL_NET;
    mib[1] = AF_ROUTE;
    mib[2] = 0;
    mib[3] = AF_LINK;
    mib[4] = NET_RT_IFLIST;
    if ((mib[5] = if_nametoindex("en0")) == 0) {
        printf("Error: if_nametoindex error/n");
        return NULL;
    }
    if (sysctl(mib, 6, NULL, &len, NULL, 0) < 0) {
        printf("Error: sysctl, take 1/n");
        return NULL;
    }
    if ((buf = malloc(len)) == NULL) {
        printf("Could not allocate memory. error!/n");
        return NULL;
    }
    if (sysctl(mib, 6, buf, &len, NULL, 0) < 0) {
        printf("Error: sysctl, take 2");
        free(buf);
        return NULL;
    }
    ifm = (struct if_msghdr *)buf;
    sdl = (struct sockaddr_dl *)(ifm + 1);
    ptr = (unsigned char *)LLADDR(sdl);
    // NSString *outstring = [NSString stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", *ptr, *(ptr+1), *(ptr+2), *(ptr+3), *(ptr+4), *(ptr+5)];
    NSString *outstring = [NSString stringWithFormat:@"%02x%02x%02x%02x%02x%02x", *ptr, *(ptr+1), *(ptr+2), *(ptr+3), *(ptr+4), *(ptr+5)];
    free(buf);
    return [outstring uppercaseString];
    

}



//+ (NSString *) imei
//{
//  
//}


+(NSString *)getImagePath{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
	NSString *path = [[paths objectAtIndex:0] stringByAppendingPathComponent:@"images"];
    
    NSFileManager* fileMgr = [NSFileManager defaultManager];
    if (![fileMgr fileExistsAtPath:path]){
		[fileMgr createDirectoryAtPath:path withIntermediateDirectories:YES attributes:nil error:nil];
    }
    return path;
}

+(UIImage *)getImageWithURL:(NSString *)thePath{
    
   
	NSString *path = [self getImagePath];
    NSString *str = [[thePath componentsSeparatedByString:@"/"] lastObject];
    NSString *picPath = [path stringByAppendingPathComponent:[NSString stringWithFormat:@"%@",str]];
    UIImage *image = [UIImage imageWithContentsOfFile:picPath];
    return image;

}

+(void)saveImageWithURL:(NSString *)thePath data:(NSData *)data{
    
    NSString *path = [self getImagePath];
    NSString *str = [[thePath componentsSeparatedByString:@"/"] lastObject];
    NSString *picPath = [path stringByAppendingPathComponent:[NSString stringWithFormat:@"%@",str]];
    [data writeToFile:picPath atomically:YES];
    
    
}

+(UIView *)getNumImageWith:(long long)num width:(float)width height:(float)height{
    
    UIView *view = [[[UIView alloc] init] autorelease];
    view.backgroundColor = [UIColor clearColor];
    view.contentMode = UIViewContentModeScaleToFill;
    
    long long theNum = num;
    NSMutableArray *arr = [[NSMutableArray new] autorelease];
    if(num >0){
        while(theNum){
            UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"jin_%lld.png",theNum%10]];
            UIImageView *imageView = [[[UIImageView alloc] initWithImage:image] autorelease];
            imageView.contentMode = UIViewContentModeScaleToFill;
            [arr insertObject:imageView atIndex:0];
            theNum = theNum/10;
            
        }
        
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"jin_%d.png",10]];
        UIImageView *imageView = [[[UIImageView alloc] initWithImage:image] autorelease];
        imageView.contentMode = UIViewContentModeScaleToFill;
        [arr insertObject:imageView atIndex:0];
        
        
        for (int i = 0; i<[arr count]; i++) {
            UIImageView *imageView = [arr objectAtIndex:i];
            imageView.frame = CGRectMake(width*i,0,width,height);
            [view addSubview:imageView];
        }
        view.frame = CGRectMake(0,0,[arr count] * width,height);
    
    }
    else{
        if(theNum == 0){
            UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"hui_0.png"]];
            UIImageView *imageView = [[[UIImageView alloc] initWithImage:image] autorelease];
            imageView.contentMode = UIViewContentModeScaleToFill;
            [arr insertObject:imageView atIndex:0];
        
        }
        else{
            while(theNum){
                
                UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"hui_%lld.png",theNum%10*-1]];
                UIImageView *imageView = [[[UIImageView alloc] initWithImage:image] autorelease];
                imageView.contentMode = UIViewContentModeScaleToFill;
                [arr insertObject:imageView atIndex:0];
                theNum = theNum/10;
                
            }
        }
        
        
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"hui_%d.png",11]];
        UIImageView *imageView = [[[UIImageView alloc] initWithImage:image] autorelease];
        imageView.contentMode = UIViewContentModeScaleToFill;
        [arr insertObject:imageView atIndex:0];
        
        
        
        for (int i = 0; i<[arr count]; i++) {
            UIImageView *imageView = [arr objectAtIndex:i];
            imageView.frame = CGRectMake(width*i,0,width,height);
            [view addSubview:imageView];
        }
        
        view.frame = CGRectMake(0,0,[arr count] * width,height);
    
    }
    
    for (UIView *cur in view.subviews) {
        cur.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin|UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleRightMargin|UIViewAutoresizingFlexibleTopMargin|UIViewAutoresizingFlexibleHeight |UIViewAutoresizingFlexibleBottomMargin;
    }
    
    return view;

}

+(UIView *)getJinNumImageWith:(long long)num width:(float)width height:(float)height{
    UIView *view = [[[UIView alloc] init] autorelease];
    view.backgroundColor = [UIColor clearColor];
    view.contentMode = UIViewContentModeScaleToFill;
    
    long long theNum = num;
    NSMutableArray *arr = [[NSMutableArray new] autorelease];
    if(num >=0){
        while(theNum){
            UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"jin_%lld.png",theNum%10]];
            UIImageView *imageView = [[[UIImageView alloc] initWithImage:image] autorelease];
            imageView.contentMode = UIViewContentModeScaleToFill;
            [arr insertObject:imageView atIndex:0];
            theNum = theNum/10;
            
        }
        
        for (int i = 0; i<[arr count]; i++) {
            UIImageView *imageView = [arr objectAtIndex:i];
            imageView.frame = CGRectMake(width*i,0,width,height);
            [view addSubview:imageView];
        }
        view.frame = CGRectMake(0,0,[arr count] * width,height);
        
    }
    
    
    for (UIView *cur in view.subviews) {
        cur.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin|UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleRightMargin|UIViewAutoresizingFlexibleTopMargin|UIViewAutoresizingFlexibleHeight |UIViewAutoresizingFlexibleBottomMargin;
    }
    
    return view;

}

+(UIView *)redNumImageWith:(long long)num width:(float)width height:(float)height{
    UIView *view = [[[UIView alloc] init] autorelease];
    view.backgroundColor = [UIColor clearColor];
    view.contentMode = UIViewContentModeScaleToFill;
    
    long long theNum = num;
    NSMutableArray *arr = [[NSMutableArray new] autorelease];
    if(num >=0){
        while(theNum){
            UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"%lld@2x.png",theNum%10]];
            UIImageView *imageView = [[[UIImageView alloc] initWithImage:image] autorelease];
            imageView.contentMode = UIViewContentModeScaleToFill;
            [arr insertObject:imageView atIndex:0];
            theNum = theNum/10;
            
        }
        
        for (int i = 0; i<[arr count]; i++) {
            UIImageView *imageView = [arr objectAtIndex:i];
            imageView.frame = CGRectMake(width*i,0,width,height);
            [view addSubview:imageView];
        }
        view.frame = CGRectMake(0,0,[arr count] * width,height);
        
    }
    
    
    for (UIView *cur in view.subviews) {
        cur.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin|UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleRightMargin|UIViewAutoresizingFlexibleTopMargin|UIViewAutoresizingFlexibleHeight |UIViewAutoresizingFlexibleBottomMargin;
    }
    
    return view;
}

+(CCSprite *)getCardNumWith:(int)num{
    
    
    CCSprite *sprite = [[[CCSprite alloc] init] autorelease];
        
    long long theNum = num;
    NSMutableArray *arr = [[NSMutableArray new] autorelease];
    
    if(theNum == 0){
         CCSprite *image = [CCSprite spriteWithFile:[NSString stringWithFormat:@"remainingCards_%lld.png",theNum%10]];
        [arr insertObject:image atIndex:0];
    }
    else{
        while(theNum){
            CCSprite *image = [CCSprite spriteWithFile:[NSString stringWithFormat:@"remainingCards_%lld.png",theNum%10]];

            [arr insertObject:image atIndex:0];
            theNum = theNum/10;
            
        }
    }
    
    CCSprite *imageIcoin = [CCSprite spriteWithFile:[NSString stringWithFormat:@"remainingCards_icon.png"]];
   
    [arr insertObject:imageIcoin atIndex:0];
    
    sprite.contentSize = CGSizeMake([arr count] * imageIcoin.contentSize.width,imageIcoin.contentSize.height);
    
    
    imageIcoin.position = ccp(imageIcoin.contentSize.width/2,imageIcoin.contentSize.height/2);
    
    float biganX = imageIcoin.contentSize.width/2+3;
    [sprite addChild:imageIcoin];
    for (int i = 1; i<[arr count]; i++) {
        CCSprite *image = [arr objectAtIndex:i];
        image.position = ccp(biganX + i*image.contentSize.width, imageIcoin.contentSize.height/2);
        [sprite addChild:image];
    }
//    [sprite displayFrame];
    return sprite;
}

+(CCSprite *)getJinNumWith:(int)num{
    CCSprite *sprite = [[[CCSprite alloc] init] autorelease];
    
    long long theNum = num;
    NSMutableArray *arr = [[NSMutableArray new] autorelease];
    
    if(theNum == 0){
        CCSprite *image = [CCSprite spriteWithFile:[NSString stringWithFormat:@"remainingCards_%lld.png",theNum%10]];
        [arr insertObject:image atIndex:0];
    }
    else{
        while(theNum){
            CCSprite *image = [CCSprite spriteWithFile:[NSString stringWithFormat:@"remainingCards_%lld.png",theNum%10]];
            
            [arr insertObject:image atIndex:0];
            theNum = theNum/10;
            
        }
    }
    CCSprite *imageIcoin = [arr objectAtIndex:0];
    //
    //    [arr insertObject:imageIcoin atIndex:0];
    
    sprite.contentSize = CGSizeMake([arr count] * imageIcoin.contentSize.width,imageIcoin.contentSize.height);
    
    
    imageIcoin.position = ccp(imageIcoin.contentSize.width/2,imageIcoin.contentSize.height/2);
        
    float biganX = imageIcoin.contentSize.width/2+3;
    [sprite addChild:imageIcoin];
    for (int i = 1; i<[arr count]; i++) {
        CCSprite *image = [arr objectAtIndex:i];
        image.position = ccp(biganX + i*image.contentSize.width, imageIcoin.contentSize.height/2);
        [sprite addChild:image];
    }
    //    [sprite displayFrame];
    sprite.anchorPoint = ccp(0,0);
    sprite.position = ccp(2,2);
    return sprite;

}


+(CCSprite *)getRedNumWith:(int)num{
    
    
    CCSprite *sprite = [[[CCSprite alloc] init] autorelease];
    
    int theNum = num;
    NSMutableArray *arr = [[NSMutableArray new] autorelease];
    
    if(theNum == 0){
        CCSprite *image = [CCSprite spriteWithFile:[NSString stringWithFormat:@"%d@2x.png",theNum%10]];
        [arr insertObject:image atIndex:0];
    }
    else{
        while(theNum){
            CCSprite *image = [CCSprite spriteWithFile:[NSString stringWithFormat:@"%d@2x.png",theNum%10]];
            
            [arr insertObject:image atIndex:0];
            theNum = theNum/10;
            
        }
    }
    
    CCSprite *imageIcoin = [arr objectAtIndex:0];
//
//    [arr insertObject:imageIcoin atIndex:0];
    
    sprite.contentSize = CGSizeMake([arr count] * imageIcoin.contentSize.width,imageIcoin.contentSize.height);
    
    
    imageIcoin.position = ccp(imageIcoin.contentSize.width/2,imageIcoin.contentSize.height/2);
    
    float biganX = imageIcoin.contentSize.width/2;
    [sprite addChild:imageIcoin];
    for (int i = 1; i<[arr count]; i++) {
        CCSprite *image = [arr objectAtIndex:i];
        image.position = ccp(biganX + i*image.contentSize.width, imageIcoin.contentSize.height/2);
        [sprite addChild:image];
    }
    return sprite;
}

+(UIView *)getTimesImageWith:(long long)num{
    UIView *view = [[[UIView alloc] init] autorelease];
    view.backgroundColor = [UIColor clearColor];
    view.contentMode = UIViewContentModeScaleToFill;
//    view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    long long theNum = num;
    
    UIImageView *imageView = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"wenzi_jiesuan_9.png"]] autorelease];
    
    view.frame = imageView.frame;
    [view addSubview:imageView];
    
    UILabel *lable = [[[UILabel alloc] init] autorelease];
    lable.backgroundColor = [UIColor clearColor];
    lable.textColor = [UIColor whiteColor];
    lable.font = [UIFont fontWithName:@"Thonburi" size:12];
    lable.contentMode = UIViewContentModeScaleToFill;
    lable.frame = CGRectMake(24, 0, 30, 15);
    
    lable.font = [UIFont boldSystemFontOfSize:16];
    lable.textColor = [UIColor colorWithRed:153/255.0 green:254/255.0 blue:28/255.0 alpha:1.0];
    lable.textAlignment = NSTextAlignmentCenter;
    lable.text = [NSString stringWithFormat:@"%lld",theNum];
    [view addSubview:lable];
    
//    NSMutableArray *arr = [[NSMutableArray new] autorelease];
//    if(num >=0){
//        while(theNum){
//            UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"lan_%lld.png",theNum%10]];
//            UIImageView *imageView = [[[UIImageView alloc] initWithImage:image] autorelease];
//            imageView.contentMode = UIViewContentModeScaleToFill;
//
//            
//            [arr insertObject:imageView atIndex:0];
//            theNum = theNum/10;
//            
//        }
//        
//        
//        for (int i = 0; i<[arr count]; i++) {
//            UIImageView *imageView = [arr objectAtIndex:i];
//            imageView.frame = CGRectMake(12*i+20,0,12,12);
//            [view addSubview:imageView];
//        }
//        view.frame = CGRectMake(0,0,[arr count] * 12+30,12);
//        
//    }
//    
//    UILabel *lable1 = [[[UILabel alloc] initWithFrame:CGRectMake(0, 2, 20, 10)] autorelease];
//    lable1.text = @"总计";
//    lable1.backgroundColor = [UIColor clearColor];
//    lable1.textColor = [UIColor whiteColor];
//    lable1.font = [UIFont fontWithName:@"Thonburi" size:12];
//    lable1.contentMode = UIViewContentModeScaleToFill;
//
//    
//    UILabel *lable2 = [[[UILabel alloc] initWithFrame:CGRectMake(view.frame.size.width-10, 2, 10, 10)] autorelease];
//    lable2.text = @"倍";
//    lable2.backgroundColor = [UIColor clearColor];
//    lable2.textColor = [UIColor whiteColor];
//    lable2.font = [UIFont fontWithName:@"Thonburi" size:12];
//    [view addSubview:lable1];
//    [view addSubview:lable2];
//    lable2.contentMode = UIViewContentModeScaleToFill;
    
    
    for (UIView *cur in view.subviews) {
        cur.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin|UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleRightMargin|UIViewAutoresizingFlexibleTopMargin|UIViewAutoresizingFlexibleHeight |UIViewAutoresizingFlexibleBottomMargin;
    }
    return view;

}

+(UIView *)getStarImageWithCurrentStar:(int)currentStar taskStar:(int)taskStar{
    
    UIView *view = [[[UIView alloc] init] autorelease];
    view.backgroundColor = [UIColor clearColor];
    for (int i = 0; i< taskStar; i++) {
        UIImageView *imageView = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"dateTask_2.png"]] autorelease];
        imageView.contentMode = UIViewContentModeScaleToFill;
        imageView.frame = CGRectMake(i*22, 0, 20, 18);
        [view addSubview:imageView];
    }
    
    if(currentStar > taskStar){
        int count = currentStar -taskStar;
        for (int i = 0; i< count; i++) {
            UIImageView *imageView = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"dateTask_3.png"]] autorelease];
//            imageView.backgroundColor = [UIColor redColor];
            imageView.contentMode = UIViewContentModeScaleToFill;
            imageView.frame = CGRectMake((i+[view.subviews count])*22, 0, 20, 18);
            [view addSubview:imageView];
        }
    }
    
    view.frame = CGRectMake(0, 2, [view.subviews count] * 22, 20);
    return view;

}


+ (NSString *)currentNetType
{
	NSString* netType = nil;
	Reachability *r = [Reachability reachabilityForInternetConnection];
    switch ([r currentReachabilityStatus]) {
		case NotReachable:
			netType = [NSString stringWithFormat:@"NotReachable"];
			break;
		case ReachableViaWWAN:
			netType = [NSString stringWithFormat:@"WWAN"];
			break;
		case ReachableViaWiFi:
			netType = [NSString stringWithFormat:@"WiFi"];
			break;
    }
	return netType;
}

+ (BOOL)isNetConnectValid {
	Reachability *wifiReach = [Reachability reachabilityForLocalWiFi];
	Reachability *internetReach = [Reachability reachabilityForInternetConnection];
	if ([wifiReach currentReachabilityStatus] == NotReachable && [internetReach currentReachabilityStatus] == NotReachable)
		return NO;
	else
		return YES;
}

+ (NSString *)yunying{
    CTTelephonyNetworkInfo *info = [[[CTTelephonyNetworkInfo alloc] init] autorelease];
    CTCarrier *carrier = info.subscriberCellularProvider;
    return [carrier carrierName];

}

+(NSString *)uuid;
{
    CFUUIDRef uuid_ref = CFUUIDCreate(NULL);
    CFStringRef uuid_string_ref= CFUUIDCreateString(NULL, uuid_ref);
    
    CFRelease(uuid_ref);
    NSString *uuid = [NSString stringWithString:(NSString*)uuid_string_ref];
    
    CFRelease(uuid_string_ref);
    
    
    return uuid;
}



//+(CCSprite *)getTime{
//    CCSprite *sprite = [[[CCSprite alloc] init] autorelease];
//    NSDate *time = [NSDate dateWithTimeIntervalSince1970:(long long)[MatchAlertManager shareMatchAlertManager].serviceTime];
//    
//    
//    NSDateFormatter *dateFormatter1 = [[[NSDateFormatter alloc] init] autorelease];
//    [dateFormatter1 setDateFormat:@"HH"];
//    
//    NSDateFormatter *dateFormatter2 = [[[NSDateFormatter alloc] init] autorelease];
//    [dateFormatter2 setDateFormat:@"mm"];
//    
//    int hour = [[dateFormatter1 stringFromDate:time] intValue];
//    int min = [[dateFormatter2 stringFromDate:time] intValue];
//    
//    CCSprite *sprite1;
//    CCSprite *sprite2;
//    CCSprite *sprite3;
//    CCSprite *sprite4;
//    CCSprite *sprite5;
//    CCSprite *sprite6;
//    
//    
//    sprite1 = [CCSprite spriteWithFile:[NSString stringWithFormat:@"tableTime_%d.png",hour/10]];
//    
//    sprite2 = [CCSprite spriteWithFile:[NSString stringWithFormat:@"tableTime_%d.png",hour%10]];
//    sprite2.position = ccp(11 *1, sprite2.position.y);
//    
//    sprite3 = [CCSprite spriteWithFile:[NSString stringWithFormat:@"tableTime_10.png"]];
//    sprite3.position = ccp(11 *2, sprite3.position.y);
//    
//    
//    sprite4 = [CCSprite spriteWithFile:[NSString stringWithFormat:@"tableTime_%d.png",min/10]];
//    sprite4.position = ccp(11 *3, sprite4.position.y);
//    
//    
//    sprite5 = [CCSprite spriteWithFile:[NSString stringWithFormat:@"tableTime_%d.png",min%10]];
//    sprite5.position = ccp(11 *4, sprite5.position.y);
//    
//    if([NetDelayManager shareNetDelayManager].delayTime<200){
//        sprite6 = [CCSprite spriteWithFile:[NSString stringWithFormat:@"tableTime_11.png"]];
//        sprite6.position = ccp(11 *5+3, sprite6.position.y);
//    }
//    else if([NetDelayManager shareNetDelayManager].delayTime<1000){
//        sprite6 = [CCSprite spriteWithFile:[NSString stringWithFormat:@"tableTime_12.png"]];
//        sprite6.position = ccp(11 *5+3, sprite6.position.y);
//        
//    }
//    else{
//        sprite6 = [CCSprite spriteWithFile:[NSString stringWithFormat:@"tableTime_13.png"]];
//        sprite6.position = ccp(11 *5+3, sprite6.position.y);
//    
//    }
//    
//    sprite.contentSize = CGSizeMake(6 * 11+6,14.5);
//    
//    [sprite addChild:sprite1];
//    [sprite addChild:sprite2];
//    [sprite addChild:sprite3];
//    [sprite addChild:sprite4];
//    [sprite addChild:sprite5];
//    [sprite addChild:sprite6];
//    
//    sprite.anchorPoint = ccp(0.5,0.5);
//    sprite.position = ccp(480-sprite.contentSize.width,200);
//    return sprite;
//}

+(UIImage *)getSmallPicture:(UIImage *)theImage{
    
    CGSize targetSize = CGSizeMake(200, 200);
    UIGraphicsBeginImageContext(targetSize); // this will crop
    CGRect thumbnailRect = CGRectZero;
    thumbnailRect.origin = CGPointZero;
    thumbnailRect.size.width= targetSize.width;
    thumbnailRect.size.height = targetSize.height;
    [theImage drawInRect:thumbnailRect];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    if(newImage == nil)
        NSLog(@"could not scale image");
    //pop the context to get back to the default
    UIGraphicsEndImageContext();
    return newImage;
}

@end
