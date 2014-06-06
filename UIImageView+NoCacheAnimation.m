//
//  UIImageView+NoCacheAnimation.m
//  PCImageViewDemo
//
//  Created by Paolo Campitelli on 06/06/14.
//
//

#import "UIImageView+NoCacheAnimation.h"
#import "UIImage+NoCacheImage.h"

@implementation UIImageView (NoCacheAnimation)


+ (void)startAnimationWithImage:(UIImageView *)objectImage andName:(NSString *)name andTotalFPS:(int)fps andRepetition:(int)repetition {
    
    NSMutableArray *array = [[NSMutableArray alloc] init];
    for (int i = 0; i < fps; i++) {
        
        if ([[UIScreen mainScreen] respondsToSelector:@selector(displayLinkWithTarget:selector:)] &&
            ([UIScreen mainScreen].scale == 2.0))
        {
            // Retina display:
            NSString *path = [[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"%@%i@2x",name,i] ofType:@"png"];
            NSData *photoData = [NSData dataWithContentsOfFile:path];
            [array addObject:[UIImage imageWithData:photoData]];
            
        } else {
            // non-Retina display:
            NSString *path = [[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"%@%i",name,i] ofType:@"png"];
            NSData *photoData = [NSData dataWithContentsOfFile:path];
            [array addObject:[UIImage imageWithData:photoData]];
        }
    }
    
    objectImage.animationImages = array;
    objectImage.animationDuration = 1/25;
    objectImage.animationRepeatCount = repetition;
    
    [objectImage startAnimating];
}


+ (void)startAnimationWithLastFrameFixWithImage:(UIImageView *)objectImage andName:(NSString *)name andTotalFPS:(int)fps andRepetition:(int)repetition {
    
    NSMutableArray *array = [[NSMutableArray alloc] init];
    for (int i = 0; i < fps; i++) {
        
        if ([[UIScreen mainScreen] respondsToSelector:@selector(displayLinkWithTarget:selector:)] &&
            ([UIScreen mainScreen].scale == 2.0))
        {
            // Retina display:
            NSString *path = [[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"%@%i@2x",name,i] ofType:@"png"];
            NSData *photoData = [NSData dataWithContentsOfFile:path];
            [array addObject:[UIImage imageWithData:photoData]];
            
        } else {
            // non-Retina display:
            NSString *path = [[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"%@%i",name,i] ofType:@"png"];
            NSData *photoData = [NSData dataWithContentsOfFile:path];
            [array addObject:[UIImage imageWithData:photoData]];
        }
    }
    
    objectImage.animationImages = array;
    objectImage.animationDuration = 1/25;
    objectImage.animationRepeatCount = repetition;
    
    //FIX LAST FRAME:
    if ([[UIScreen mainScreen] respondsToSelector:@selector(displayLinkWithTarget:selector:)] &&
        ([UIScreen mainScreen].scale == 2.0))
    {
        [objectImage setImage:[UIImage imageNoCacheNamed:[NSString stringWithFormat:@"%@%i@2x",name,fps -1]]];
        
    } else {
        [objectImage setImage:[UIImage imageNoCacheNamed:[NSString stringWithFormat:@"%@%i",name,fps -1]]];
        
    }
    
    [objectImage startAnimating];
    
}



@end
