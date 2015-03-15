# UIImageView-MARKColorizer

[![Version](https://img.shields.io/cocoapods/v/UIImageView-MARKColorizer.svg?style=flat)](http://cocoadocs.org/docsets/UIImageView-MARKColorizer)
[![License](https://img.shields.io/cocoapods/l/UIImageView-MARKColorizer.svg?style=flat)](http://cocoadocs.org/docsets/UIImageView-MARKColorizer)
[![Platform](https://img.shields.io/cocoapods/p/UIImageView-MARKColorizer.svg?style=flat)](http://cocoadocs.org/docsets/UIImageView-MARKColorizer)

UIImageView category for image colorizing. Uses CGBlendMode for operations with images. Check Apple documentation for more information:
https://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CGContext/index.html#//apple_ref/c/tdef/CGBlendMode

Please check Demo project for a basic example on how to use UIImageView-MARKColorizer.

### Available methods
```objc
- (UIImage *)mark_colorizedImageWithColor:(UIColor *)color
                                blendMode:(CGBlendMode)blendMode;

- (void)mark_colorizeImageWithColor:(UIColor *)color
                          blendMode:(CGBlendMode)blendMode;
```

## Usage

#### In your code
```objc
UIImage *image = [UIImage imageNamed:@"image"];
UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
[imageView mark_colorizeImageWithColor:[UIColor greenColor]
                                     blendMode:kCGBlendModeMultiply];
// ...

UIImage *colorizedImage = [imageView mark_colorizedImageWithColor:[UIColor greenColor]
                                                       blendMode:kCGBlendModeMultiply];
```

## Installation

**UIImageView-MARKColorizer** is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

`pod 'UIImageView-MARKColorizer'`

## Author

Vadym Markov, impressionwave@gmail.com

## License

**UIImageView-MARKColorizer** is available under the MIT license. See the LICENSE file for more info.
