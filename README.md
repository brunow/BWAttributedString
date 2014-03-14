## BWAttributedString

Create NSAttributedString with properties.

## Installation

**Copy BWAttributedString** dir into your project.

Or with **Cocoapods**

	pod 'BWAttributedString', :git => "https://github.com/brunow/BWAttributedString.git", :tag => "0.1.2"

## Example code

```objective-c

self.label.attributedText = [NSAttributedString attributedStringWithString:@"Hello\nSecond line" propertiesBlock:^(BWAttributedStringProperties *properties) {
  properties.textColor = [UIColor redColor];
  properties.font = [UIFont boldSystemFontOfSize:25];
  properties.textAlignment = NSTextAlignmentRight;
  properties.lineSpacing = 10;
}];


```

## Contact

Bruno Wernimont

- Twitter - [@brunowernimont](http://twitter.com/brunowernimont)
