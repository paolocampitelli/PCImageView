//
//  UIImage+NoCacheImage.m
//  PCImageViewDemo
//
//  Created by Paolo Campitelli on 06/06/14.
//
//

#import "UIImage+NoCacheImage.h"

@implementation UIImage (NoCacheImage)



+(UIImage *)imageNoCacheNamed:(NSString *)name {
    
    UIImage *toReturn;
    
    if ([[UIScreen mainScreen] respondsToSelector:@selector(displayLinkWithTarget:selector:)] &&
        ([UIScreen mainScreen].scale == 2.0))
    {
        // Retina display:
        NSString *pathImmagine = [[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"%@@2x", name] ofType:@"png"];
        NSData *photoDataSfondo = [NSData dataWithContentsOfFile:pathImmagine];
        toReturn = [UIImage imageWithData:photoDataSfondo];
    }
    else {
        //Standard Resolution:
        NSString *pathImmagine = [[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"%@", name] ofType:@"png"];
        NSData *photoDataSfondo = [NSData dataWithContentsOfFile:pathImmagine];
        toReturn = [UIImage imageWithData:photoDataSfondo];
    }
    
    
    return toReturn;
}


+(UIImage *)imageJPGNoCacheNamed:(NSString *)name {
    
    UIImage *toReturn;
    
    if ([[UIScreen mainScreen] respondsToSelector:@selector(displayLinkWithTarget:selector:)] &&
        ([UIScreen mainScreen].scale == 2.0))
    {
        // Retina display:
        NSString *pathImmagine = [[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"%@@2x", name] ofType:@"jpg"];
        NSData *photoDataSfondo = [NSData dataWithContentsOfFile:pathImmagine];
        toReturn = [UIImage imageWithData:photoDataSfondo];
    }
    else {
        //Standard Resolution:
        NSString *pathImmagine = [[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"%@", name] ofType:@"jpg"];
        NSData *photoDataSfondo = [NSData dataWithContentsOfFile:pathImmagine];
        toReturn = [UIImage imageWithData:photoDataSfondo];
    }
    
    
    return toReturn;
}





@end
