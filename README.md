![icon](https://raw.githubusercontent.com/jefflovejapan/CIFilterKit/master/filter.png)

# CIFilterKit

[![Build Status](https://travis-ci.org/jefflovejapan/CIFilterKit.svg?branch=master)](https://travis-ci.org/jefflovejapan/CIFilterKit)

In order to use Core Image you have to create an instance of `CIFilter`, set the appropriate keys and values, then extract the filter's output image. 

```swift
let inImg = CIImage(CGImage:someUIImage.CGImage!)
let filter = CIFilter(name:"CIGaussianBlur", withInputParameters:[kCIInputRadiusKey: 100.0, kCIInputImageKey: inImg])
let outImg = filter.outputImage
```

That's a lot of work to essentially call a single function, and it gets more cumbersome the more filters you chain together. CIFilterKit provides a functional, composable wrapper that can make Core Image easier to work with.

### Installation

The easiest way to install CIFilterKit is with [CocoaPods](cocoapods.org). Just add the following to your Podfile:

```swift
pod 'CIFilterKit'
```

Note that you'll also need to [add `use_frameworks!` to your Podfile](http://blog.cocoapods.org/CocoaPods-0.36/) if you haven't already.

### Usage

A `Filter` is a function of type `CIImage -> CIImage`. You can create an instance of any of the available Core Image filters by calling the respective function, the name of the equivalent `CIFilter` minus the "CI". For example, the code from the introduction becomes:

```swift
let outImg = GaussianBlur(100.0)(inImg)
```

Many filters take an associated `options` struct as an argument. These each implement two initializers -- one that takes an argument for each variable in the struct, and one that takes no arguments, setting them all to their default values. The latter provides an easy way to to set a single value for the one parameter you care about and leave everything else at its default value, without having to deal with optionals.

```swift
let options1 = DotScreenOptions(inputCenter:XYPosition(x:150.0, y:150.0), inputAngle:1.6, inputWidth:6.0, inputSharpness:0.7)
var options2 = DotScreenOptions()
options2.inputAngle = 1.6
```

### Chaining

Filters can be chained together using the `|>>` operator.

```swift
let inImg = CIImage(CGImage:someUIImage.CGImage!)
let filter1 = GaussianBlur(100.0)
let filter2 = PhotoEffectChrome()
let filter3 = ColorPosterize(50.0)
let stacked: Filter = filter1 |>> filter2 |>> filter3
let outImg = stacked(inImg)
```

### Attributes

And we can get the filter's associated `attributes` dictionary by calling `attributesForFilter`

```swift
let dotScreenAttributes: FilterAttributes = attributesForFilter(FilterName.DotScreen)
```

### Generators

Lastly, CIFilters that are members of `CICategoryGenerator` or `CICategoryGradient` don't take input images as arguments, and so their respective functions simply return the output `CIImage` rather than a `Filter` closure.

```swift
let aGradient: CIImage = GaussianGradient(GaussianGradientOptions())
```

### Thanks

Inspired by the "Wrapping Core Image" chapter of [*Functional Programming in Swift*](http://www.objc.io/books/) by Chris Eidhof, Florian Kugler, and Wouter Swierstra.
