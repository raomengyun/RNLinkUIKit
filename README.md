# RNLinkUIKit

RNLinkUIKit is a wrapper for using UIKit in a link style

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

RNLinkUIKit is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "RNLinkUIKit"
```

## Sample code

first you should create a view maker, all the view makers have the same inheritance hierarchies as UIKit.you can create a label like this

````objc
UILabel *label = RNLinkUIKit.label
                            .numberOfLines(1)
                            .fontWithSystemSize(17.f)
                            .textColorFromHex(0x999999)
                            .text(@"Hello RNLinkUIKit!")
                            .translatesAutoresizingMaskIntoConstraints(NO)
                            .make;
````
RNLinkUIKit.label will create a RNLabelMake who's aim at construct a label.but you should warn that all the view makers are **attribute degenerating**, for example RNLinkUIKit.label.translatesAutoresizingMaskIntoConstraints(NO) will create a RNViewMaker which is the father class of RNLabelMake because of translatesAutoresizingMaskIntoConstraints is a attribute of RNLabelMake.so you should link all the attribute in sequence.

## Author

MuMu, raomengyun.gmail.com

## License

RNLinkUIKit is available under the MIT license. See the LICENSE file for more info.
