@import UIKit;

@interface UIImageView (MARKColorizer)

- (UIImage *)mark_colorizedImageWithColor:(UIColor *)color
                                blendMode:(CGBlendMode)blendMode;

- (void)mark_colorizeImageWithColor:(UIColor *)color
                          blendMode:(CGBlendMode)blendMode;

@end
