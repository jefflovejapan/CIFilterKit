//
//  Filter.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 5/16/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Foundation
import CoreImage


//MARK: typealias

/**
    A function that applies a CIFilter. Chainable with the `|>>` operator.
*/
public typealias Filter = (CIImage) -> CIImage?


public typealias Parameters = [String: Any]
public typealias OptionalParameters = [String: Any?]
public typealias FilterAttributes = [String: Any]

/**
    A function whose curried value is a `Filter`.
*/
public typealias ImageComposer = (CIImage) -> Filter

/**
    There are several types of `CIFilter` that do not operate on input images, but simply produce an output image. These are not chainable using the `|>>` operator.
*/
public typealias ImageGenerator = (OptionalParameters) -> CIImage?

/**
    An array of `RGBAComponents` for modeling a 3D lookup table. @see [CIColorCube](https://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIColorCube)
*/
public typealias ColorCubeData = Array<RGBAComponents>
public typealias FilterStack = Array<Filter>


//MARK: enum

/**
    The names of the available Core Image filters. The raw value is the name of the corresponding CIFilter.
*/

public enum FilterName: String {
    
    // Blur
    /** @name Blur filters */
    /** */
    case GaussianBlur = "CIGaussianBlur"
    /** */
    case MotionBlur = "CIMotionBlur"
    /** */
    case ZoomBlur = "CIZoomBlur"
    
    // ColorAdjustment
    /** */
    case ColorControls = "CIColorControls"
    /** */
    case ColorMatrix = "CIColorMatrix"
    /** */
    case ExposureAdjust = "CIExposureAdjust"
    /** */
    case GammaAdjust = "CIGammaAdjust"
    /** */
    case HueAdjust = "CIHueAdjust"
    /** */
    case LinearToSRGBToneCurve = "CILinearToSRGBToneCurve"
    /** */
    case SRGBToneCurveToLinear = "CISRGBToneCurveToLinear"
    /** */
    case TemperatureAndTint = "CITemperatureAndTint"
    /** */
    case ToneCurve = "CIToneCurve"
    /** */
    case Vibrance = "CIVibrance"
    /** */
    case WhitePointAdjust = "CIWhitePointAdjust"
    
    //ColorEffect
    /** */
    case ColorClamp = "CIColorClamp"
    /** */
    case ColorCrossPolynomial = "CIColorCrossPolynomial"
    /** */
    case ColorCube = "CIColorCube"
    /** */
    case ColorCubeWithColorSpace = "CIColorCubeWithColorSpace"
    /** */
    case ColorInvert = "CIColorInvert"
    /** */
    case ColorMap = "CIColorMap"
    /** */
    case ColorMonochrome = "CIColorMonochrome"
    /** */
    case ColorPolynomial = "CIColorPolynomial"
    /** */
    case ColorPosterize = "CIColorPosterize"
    /** */
    case FalseColor = "CIFalseColor"
    /** */
    case MaskToAlpha = "CIMaskToAlpha"
    /** */
    case MaximumComponent = "CIMaximumComponent"
    /** */
    case MinimumComponent = "CIMinimumComponent"
    /** */
    case PhotoEffectChrome = "CIPhotoEffectChrome"
    /** */
    case PhotoEffectFade = "CIPhotoEffectFade"
    /** */
    case PhotoEffectInstant = "CIPhotoEffectInstant"
    /** */
    case PhotoEffectMono = "CIPhotoEffectMono"
    /** */
    case PhotoEffectNoir = "CIPhotoEffectNoir"
    /** */
    case PhotoEffectProcess = "CIPhotoEffectProcess"
    /** */
    case PhotoEffectTonal = "CIPhotoEffectTonal"
    /** */
    case PhotoEffectTransfer = "CIPhotoEffectTransfer"
    /** */
    case SepiaTone = "CISepiaTone"
    /** */
    case Vignette = "CIVignette"
    /** */
    case VignetteEffect = "CIVignetteEffect"
    
    //CompositeOperation
    /** */
    case AdditionCompositing = "CIAdditionCompositing"
    /** */
    case ColorBlendMode = "CIColorBlendMode"
    /** */
    case ColorBurnBlendMode = "CIColorBurnBlendMode"
    /** */
    case ColorDodgeBlendMode = "CIColorDodgeBlendMode"
    /** */
    case DarkenBlendMode = "CIDarkenBlendMode"
    /** */
    case DifferenceBlendMode = "CIDifferenceBlendMode"
    /** */
    case DivideBlendMode = "CIDivideBlendMode"
    /** */
    case ExclusionBlendMode = "CIExclusionBlendMode"
    /** */
    case HardLightBlendMode = "CIHardLightBlendMode"
    /** */
    case HueBlendMode = "CIHueBlendMode"
    /** */
    case LightenBlendMode = "CILightenBlendMode"
    /** */
    case LinearBurnBlendMode = "CILinearBurnBlendMode"
    /** */
    case LinearDodgeBlendMode = "CILinearDodgeBlendMode"
    /** */
    case LuminosityBlendMode = "CILuminosityBlendMode"
    /** */
    case MaximumCompositing = "CIMaximumCompositing"
    /** */
    case MinimumCompositing = "CIMinimumCompositing"
    /** */
    case MultiplyBlendMode = "CIMultiplyBlendMode"
    /** */
    case MultiplyCompositing = "CIMultiplyCompositing"
    /** */
    case OverlayBlendMode = "CIOverlayBlendMode"
    /** */
    case PinLightBlendMode = "CIPinLightBlendMode"
    /** */
    case SaturationBlendMode = "CISaturationBlendMode"
    /** */
    case ScreenBlendMode = "CIScreenBlendMode"
    /** */
    case SoftLightBlendMode = "CISoftLightBlendMode"
    /** */
    case SourceAtopCompositing = "CISourceAtopCompositing"
    /** */
    case SourceInCompositing = "CISourceInCompositing"
    /** */
    case SourceOutCompositing = "CISourceOutCompositing"
    /** */
    case SourceOverCompositing = "CISourceOverCompositing"
    /** */
    case SubtractBlendMode = "CISubtractBlendMode"
    
    //DistortionEffect
    /** */
    case BumpDistortion = "CIBumpDistortion"
    /** */
    case BumpDistortionLinear = "CIBumpDistortionLinear"
    /** */
    case CircleSplashDistortion = "CICircleSplashDistortion"
    /** */
    case GlassDistortion = "CIGlassDistortion"
    /** */
    case HoleDistortion = "CIHoleDistortion"
    /** */
    case LightTunnel = "CILightTunnel"
    /** */
    case PinchDistortion = "CIPinchDistortion"
    /** */
    case TwirlDistortion = "CITwirlDistortion"
    /** */
    case VortexDistortion  = "CIVortexDistortion"
    
    //Generators
    /** */
    case AztecCodeGenerator = "CIAztecCodeGenerator"
    /** */
    case CheckerboardGenerator = "CICheckerboardGenerator"
    /** */
    case Code128BarcodeGenerator = "CICode128BarcodeGenerator"
    /** */
    case ConstantColorGenerator = "CIConstantColorGenerator"
    /** */
    case QRCodeGenerator = "CIQRCodeGenerator"
    /** */
    case RandomGenerator = "CIRandomGenerator"
    /** */
    case StarShineGenerator = "CIStarShineGenerator"
    /** */
    case StripesGenerator = "CIStripesGenerator"
    
    //GeometryAdjustment
    /** */
    case AffineTransform = "CIAffineTransform"
    /** */
    case Crop = "CICrop"
    /** */
    case LanczosScaleTransform = "CILanczosScaleTransform"
    /** */
    case PerspectiveCorrection = "CIPerspectiveCorrection"
    /** */
    case PerspectiveTile = "CIPerspectiveTile"
    /** */
    case PerspectiveTransform = "CIPerspectiveTransform"
    /** */
    case PerspectiveTransformWithExtent = "CIPerspectiveTransformWithExtent"
    /** */
    case StraightenFilter = "CIStraightenFilter"
    
    //Gradients
    /** */
    case GaussianGradient = "CIGaussianGradient"
    /** */
    case LinearGradient = "CILinearGradient"
    /** */
    case RadialGradient = "CIRadialGradient"
    /** */
    case SmoothLinearGradient = "CISmoothLinearGradient"
    
    //HalftoneEffect
    /** */
    case CircularScreen = "CICircularScreen"
    /** */
    case DotScreen = "CIDotScreen"
    /** */
    case HatchedScreen = "CIHatchedScreen"
    /** */
    case LineScreen = "CILineScreen"
    
    //Reduction
    /** */
    case AreaHistogram = "CIAreaHistogram"
    /** */
    case HistogramDisplayFilter = "CIHistogramDisplayFilter"
    
    //Sharpen
    /** */
    case SharpenLuminance = "CISharpenLuminance"
    /** */
    case UnsharpMask = "CIUnsharpMask"
    
    //Stylize
    /** */
    case BlendWithAlphaMask = "CIBlendWithAlphaMask"
    /** */
    case BlendWithMask = "CIBlendWithMask"
    /** */
    case Bloom = "CIBloom"
    /** */
    case Convolution3X3 = "CIConvolution3X3"
    /** */
    case Convolution5X5 = "CIConvolution5X5"
    /** */
    case Convolution9Horizontal = "CIConvolution9Horizontal"
    /** */
    case Convolution9Vertical = "CIConvolution9Vertical"
    /** */
    case Gloom = "CIGloom"
    /** */
    case HighlightShadowAdjust = "CIHighlightShadowAdjust"
    /** */
    case Pixellate = "CIPixellate"
    
    //TileEffect
    /** */
    case AffineClamp = "CIAffineClamp"
    /** */
    case AffineTile = "CIAffineTile"
    /** */
    case EightfoldReflectedTile = "CIEightfoldReflectedTile"
    /** */
    case FourfoldReflectedTile = "CIFourfoldReflectedTile"
    /** */
    case FourfoldRotatedTile = "CIFourfoldRotatedTile"
    /** */
    case FourfoldTranslatedTile = "CIFourfoldTranslatedTile"
    /** */
    case GlideReflectedTile = "CIGlideReflectedTile"
    /** */
    case SixfoldReflectedTile = "CISixfoldReflectedTile"
    /** */
    case SixfoldRotatedTile = "CISixfoldRotatedTile"
    /** */
    case TriangleKaleidoscope = "CITriangleKaleidoscope"
    /** */
    case TwelvefoldReflectedTile = "CITwelvefoldReflectedTile"
}

/**
    Degree of error correction. Used by QRCodeGenerator.
*/

public enum ErrorCorrectionLevel: String {
    /** */
    case L = "L"
    /** */
    case M = "M"
    /** */
    case Q = "Q"
    /** */
    case H = "H"
}

//MARK: struct

/**
    A point in 2D space, convertible to a CIVector.
*/

public struct XYPosition {
    var x: Double
    var y: Double
    /** */
    public init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
    /** */
    func vector() -> CIVector {
        return CIVector(x: CGFloat(x), y: CGFloat(y))
    }
}

/**
    A point in 4D space, convertible to a CIVector.
*/

public struct RGBAComponents {
    
    /** */
    var r: Double
    /** */
    public var g: Double
    /** */
    public var b: Double
    /** */
    public var a: Double
    
    /** */
    
    public init(r: Double, g: Double, b: Double, a: Double){
        self.r = r
        self.g = g
        self.b = b
        self.a = a
    }
    
    /** */
    
    public func vector() -> CIVector {
        return CIVector(x: CGFloat(r), y: CGFloat(g), z: CGFloat(b), w: CGFloat(a))
    }
}

/**
    The coefficients of a cubic polynomial equation of the type `y = a3*x^3 + a2*x^2 + a1*x + a0`. Used in ColorPolynomialOptions.
*/

public struct PolynomialCoefficients {
    var a0: Double
    var a1: Double
    var a2: Double
    var a3: Double
    
    /** */
    
    public init(a0: Double, a1: Double, a2: Double, a3: Double) {
        self.a0 = a0
        self.a1 = a1
        self.a2 = a2
        self.a3 = a3
    }
    
    /** */
    
    public func vector() -> CIVector {
        return CIVector(x: CGFloat(a0), y: CGFloat(a1), z: CGFloat(a2), w: CGFloat(a3))
    }
}

/**
    Used to construct ColorCrossPolynomialOptions.
*/

public struct CrossPolynomialCoefficients {
    var a0: Double
    var a1: Double
    var a2: Double
    var a3: Double
    var a4: Double
    var a5: Double
    var a6: Double
    var a7: Double
    var a8: Double
    var a9: Double
    
    /** */
    public init(a0: Double, a1: Double, a2: Double, a3: Double, a4: Double, a5: Double, a6: Double, a7: Double, a8: Double, a9: Double) {
        self.a0 = a0
        self.a1 = a1
        self.a2 = a2
        self.a3 = a3
        self.a4 = a4
        self.a5 = a5
        self.a6 = a6
        self.a7 = a7
        self.a8 = a8
        self.a9 = a9
    }
    /** */
    public func vector() -> CIVector {
        let str = "[\(a0) \(a1) \(a2) \(a3) \(a4) \(a5) \(a6) \(a7) \(a8) \(a9)]"
        return CIVector(string: str)
    }
}

/**
    Used to construct TemperatureAndTintOptions.
*/

public struct TempAndTint {
    var temp: Double
    var tint: Double
    /** */
    public init(temp: Double, tint: Double) {
        self.temp = temp
        self.tint = tint
    }
    /** */
    public func vector() -> CIVector {
        return CIVector(x:CGFloat(temp), y: CGFloat(tint))
    }
}

/**
    A 2D vector.
*/

public struct XYOffset {
    var x: Double
    var y: Double
    /** */
    public init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
    /** */
    public func vector() -> CIVector {
        return CIVector(x:CGFloat(x), y: CGFloat(y))
    }
}

/**
    A 3x3 convolution matrix. @See [CIConvolution3X3](https://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIConvolution3X3).
*/

public struct ConvolutionMatrix3X3 {
    var w00: Double
    var w01: Double
    var w02: Double
    var w10: Double
    var w11: Double
    var w12: Double
    var w20: Double
    var w21: Double
    var w22: Double
    /** */
    public init(w00: Double, w01: Double, w02: Double, w10: Double, w11: Double, w12: Double, w20: Double, w21: Double, w22: Double) {
        self.w00 = w00
        self.w01 = w01
        self.w02 = w02
        self.w10 = w10
        self.w11 = w11
        self.w12 = w12
        self.w20 = w20
        self.w21 = w21
        self.w22 = w22
    }
    /** */
    public func vector() -> CIVector {
        return CIVector(string: "[\(w00) \(w01) \(w02) \(w10) \(w11) \(w12) \(w20) \(w21) \(w22)]")
    }
}

/**
    A 5x5 convolution matrix. @See [CIConvolution5X5](https://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIConvolution5X5).
*/

public struct ConvolutionMatrix5X5 {
    var w00: Double
    var w01: Double
    var w02: Double
    var w03: Double
    var w04: Double
    var w10: Double
    var w11: Double
    var w12: Double
    var w13: Double
    var w14: Double
    var w20: Double
    var w21: Double
    var w22: Double
    var w23: Double
    var w24: Double
    var w30: Double
    var w31: Double
    var w32: Double
    var w33: Double
    var w34: Double
    var w40: Double
    var w41: Double
    var w42: Double
    var w43: Double
    var w44: Double
    /** */
    public init(w00: Double, w01: Double, w02: Double, w03: Double, w04: Double, w10: Double, w11: Double, w12: Double, w13: Double, w14: Double, w20: Double, w21: Double, w22: Double, w23: Double, w24: Double, w30: Double, w31: Double, w32: Double, w33: Double, w34: Double, w40: Double, w41: Double, w42: Double, w43: Double, w44: Double) {
        self.w00 = w00
        self.w01 = w01
        self.w02 = w02
        self.w03 = w03
        self.w04 = w04
        self.w10 = w10
        self.w11 = w11
        self.w12 = w12
        self.w13 = w13
        self.w14 = w14
        self.w20 = w20
        self.w21 = w21
        self.w22 = w22
        self.w23 = w23
        self.w24 = w24
        self.w30 = w30
        self.w31 = w31
        self.w32 = w32
        self.w33 = w33
        self.w34 = w34
        self.w40 = w40
        self.w41 = w41
        self.w42 = w42
        self.w43 = w43
        self.w44 = w44
    }
    /** */
    public func vector() -> CIVector {
        return CIVector(string: "[\(w00) \(w01) \(w02) \(w03) \(w04) \(w10) \(w11) \(w12) \(w13) \(w14) \(w20) \(w21) \(w22) \(w23) \(w24) \(w30) \(w31) \(w32) \(w33) \(w34) \(w40) \(w41) \(w42) \(w43) \(w44)]")
    }
}

/**
    A 1x9 convolution vector. @See [CIConvolution9Horizontal](https://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIConvolution9Horizontal), [CIConvolution9Vertical](https://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIConvolution9Vertical).
*/

public struct ConvolutionVector9 {
    var w0: Double
    var w1: Double
    var w2: Double
    var w3: Double
    var w4: Double
    var w5: Double
    var w6: Double
    var w7: Double
    var w8: Double
    /** */
    public init(w0: Double, w1: Double, w2: Double, w3: Double, w4: Double, w5: Double, w6: Double, w7: Double, w8: Double) {
        self.w0 = w0
        self.w1 = w1
        self.w2 = w2
        self.w3 = w3
        self.w4 = w4
        self.w5 = w5
        self.w6 = w6
        self.w7 = w7
        self.w8 = w8
    }
    /** */
    public func vector() -> CIVector {
        return CIVector(string: "[\(w0) \(w1) \(w2) \(w3) \(w4) \(w5) \(w6) \(w7) \(w8)]")
    }

}

//MARK: extension

/** Shorthand to express `CGRect` as a `CIVector` */

public extension CGRect {
    /** */
    var vector: CIVector {
        return CIVector(cgRect: self)
    }
}

/** Shorthand to express `CGAffineTransform` as an `NSValue` */

public extension CGAffineTransform {
    /** */
    public var value: NSValue {
        return NSValue(cgAffineTransform: self)
    }
}


//MARK: operator

precedencegroup FilterCompositionPrecedence {
    associativity: left
}
infix operator |>>: FilterCompositionPrecedence

/**
Infix operator for stacking multiple filters. e.g.,
    
    let inImg = CIImage(CGImage:someUIImage.CGImage!)

    let filter1 = GaussianBlur(100.0)
    let filter2 = PhotoEffectChrome()
    let filter3 = ColorPosterize(50.0)
    let stacked = filter1 |>> filter2 |>> filter3

    let outImg = stacked(inImg)
*/

public func |>> (filter1: @escaping Filter, filter2: @escaping Filter) -> Filter {
    return { (img: CIImage) -> CIImage? in filter1(img).flatMap { filter2($0) } }
}

//MARK: function

/** 

    Get the `attributes` dictionary associated with a given `Filter` in order to construct sliders, figure out min / max values, etc. The equivalent of calling `attributes()` on an instance of `CIFilter`.

*/

public func attributesForFilter(filterName: FilterName) -> FilterAttributes {
    return CIFilter(name: filterName.rawValue)?.attributes ?? [:] as FilterAttributes
}

func noParamsFilter(name:String) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey: image
        ]
        let filter = CIFilter(name:name, withInputParameters:parameters)
        return filter?.outputImage
    }
}

func Composer(name: String) -> ImageComposer {
    return { bgImage in
        return { image in
            let parameters = [
                kCIInputImageKey: image,
                "inputBackgroundImage": bgImage
            ]
            let filter = CIFilter(name:name, withInputParameters: parameters)
            return filter?.outputImage
        }
    }
}

/** 
    Checks to see if an integer is a cube
    :warning: Only to be used with natural numbers
*/

public func countIsCube(_ dividend: Int) -> Bool {
    return cubeRoot(dividend) != 0
}

func cubeRoot(_ dividend: Int) -> Int{
    if(dividend <= 0) {
        return 0
    }
    let ceil = 64
    let floor = 1
    return cubeRootIter(guess: floor, target: dividend, ceil: ceil)
}

func cubeRootIter(guess: Int, target: Int, ceil: Int) -> Int {
    if(isCubeRoot(possibleRoot: guess, target: target)){
        return guess
    } else if(guess >= ceil){
        return 0
    }
    return (cubeRootIter(guess: guess + 1, target: target, ceil: ceil))
}

func isCubeRoot(possibleRoot: Int, target: Int) -> Bool{
    return cube(possibleRoot) == target
}

func cube(_ x: Int) -> Int {
    return x * x * x
}


