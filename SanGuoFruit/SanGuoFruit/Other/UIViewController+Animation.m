//
//  UIViewController+Animation.m
//  SanGuoFruit
//
//  Created by huang he on 13-4-7.
//  Copyright (c) 2013年 huang he. All rights reserved.
//

#import "UIViewController+Animation.h"

@implementation UIViewController (Animation)

-(void)animationShow1{
    self.view.alpha = 0.0;
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    [UIView setAnimationDuration:0.7];
    self.view.alpha = 1.0;
    [UIView commitAnimations];
}
-(void)animationHidden1{
    self.view.alpha = 1.0;
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    [UIView setAnimationDuration:0.7];
    self.view.alpha = 0.0;
    [UIView commitAnimations];
}

@end
