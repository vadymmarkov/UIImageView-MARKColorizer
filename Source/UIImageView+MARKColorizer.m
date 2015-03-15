#import "UIImageView+MARKColorizer.h"
#import "UIImage+MARKColorizer.h"

@implementation UIImageView (MARKColorizer)

- (UIImage *)mark_colorizedImageWithColor:(UIColor *)color
                                blendMode:(CGBlendMode)blendMode
{
    if (self.image) {
        return [self.image mark_colorizedCopyWithColor:color blendMode:blendMode];
    }
    return nil;
}

- (void)mark_colorizeImageWithColor:(UIColor *)color
                          blendMode:(CGBlendMode)blendMode
{
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0ul);
    dispatch_async(queue, ^{
        UIImage *image = [self mark_colorizedImageWithColor:color
                                                  blendMode:blendMode];
        dispatch_async(dispatch_get_main_queue(), ^{
            if (image) {
                self.image = image;
            }
        });
    });
}

@end
