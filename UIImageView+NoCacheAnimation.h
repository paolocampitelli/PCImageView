//
//  UIImageView+NoCacheAnimation.h
//  PCImageViewDemo
//
//  Created by Paolo Campitelli on 06/06/14.
//
//

#import <UIKit/UIKit.h>

@interface UIImageView (NoCacheAnimation)


/**
 This method create an UIImageView animation with NSData objects. Images will be immediately deallocated instead of "standard" UIImage created with [UIImage imagedName:****] method.
 @param objectImage UIImageView to animate
 @param name Name of "base" image without frame number. Example: If Images are named image0.png, image1.png, [...] , image24.png name will be
 "image" (without quotes).
 @param fps Number of frames. Must be 25 (25 = 1 sec) or a multiple. Example: 25, 50, 75, 100 etc.
 @param repetition Number of Repetitions. 0 = infinite.
 */
+ (void)startAnimationWithImage:(UIImageView *)objectImage andName:(NSString *)name andTotalFPS:(int)fps andRepetition:(int)repetition;


/**
 This method create an UIImageView animation with NSData objects. Images will be immediately deallocated instead of "standard" UIImage created with [UIImage imagedName:****] method. Use this method if you have a "last frame" issue.
 @param objectImage UIImageView to animate
 @param name Name of "base" image without frame number. Example: If Images are named image0.png, image1.png, [...] , image24.png name will be
 "image" (without quotes).
 @param fps Number of frames. Must be 25 (25 =1 sec) or a multiple. Example: 25, 50, 75, 100 etc.
 @param repetition Number of Repetitions. 0 = infinite.
 */
+ (void)startAnimationWithLastFrameFixWithImage:(UIImageView *)objectImage andName:(NSString *)name andTotalFPS:(int)fps andRepetition:(int)repetition;


@end
