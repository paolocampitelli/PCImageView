//
//  UIImage+NoCacheImage.h
//  PCImageViewDemo
//
//  Created by Paolo Campitelli on 06/06/14.
//
//

#import <UIKit/UIKit.h>

@interface UIImage (NoCacheImage)

/**
 This method return an UIImage with NSData (PNG). Image will be immediately deallocated instead of "standard" UIImage created with
 [UIImage imagedName:*****] method.
 @param name of the image.
 @returns UImage with NSData.
 */
+(UIImage *)imageNoCacheNamed:(NSString *)name;


/**
 This method return an UIImage with NSData (JPG). Image will be immediately deallocated instead of "standard" UIImage created with
 [UIImage imagedName:****] method.
 @param name of the image.
 @returns UImage with NSData.
 */
+(UIImage *)imageJPGNoCacheNamed:(NSString *)name;





@end
