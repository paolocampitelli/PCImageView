PCImageView
===========

"PCImageView" category for iOS allow to create UIImage and UIImageView animations without UIKit caching management. 
It is useful when you should deallocate immediately very large images.



##Usage:

1) Copy categories into your project.

2) Import file in your class:
``` objective-c
#import "UIImage+NoCacheImage.h"
#import "UIImageView+NoCacheAnimation.h"
```
3) 
``` objective-c
self.myImageView.image = [UIImage imageNoCacheNamed:@"imageName"]; //png file
self.myImageView2.image = [UIImage imageJPGNoCacheNamed:@"imageName"]; //jpg file
    
[UIImageView startAnimationWithImage:self.myImageView andName:@"imageFps" andTotalFPS:25 andRepetition:0];
[UIImageView startAnimationWithLastFrameFixWithImage:self.myImageView andName:@"imageFps" andTotalFPS:25 andRepetition:0];
```


Very simple. 
