//
//  Options.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 6/7/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Foundation

//MARK: Blur options

public struct MotionBlurOptions {
    public var inputRadius: Double
    public var inputAngle: Double
    public init(inputRadius: Double, inputAngle: Double) {
        self.inputRadius = inputRadius
        self.inputAngle = inputAngle
    }
    public init() {
        self.inputRadius = 10.0
        self.inputAngle = 0.0
    }
}

public struct ZoomBlurOptions {
    public var inputCenter: XYPosition
    public var inputRadius: Double
    public init(inputCenter: XYPosition, inputRadius: Double, inputAmount: Double) {
        self.inputCenter = inputCenter
        self.inputRadius = inputRadius
    }
    public init() {
        self.inputCenter = XYPosition(x:150.0, y:150.0)
        self.inputRadius = 20.0
    }
}


//MARK: ColorAdjustment options

public struct ColorControlsOptions {
    public var inputSaturation: Double
    public var inputBrightness: Double
    public var inputContrast: Double
    public init(inputSaturation: Double , inputBrightness: Double , inputContrast: Double) {
        self.inputSaturation = inputSaturation
        self.inputBrightness = inputBrightness
        self.inputContrast = inputContrast
    }
    public init() {
        self.inputSaturation = 1.0
        self.inputBrightness = 0.0
        self.inputContrast = 1.0
    }
}

public struct ColorMatrixOptions {
    public var inputRVector: RGBAComponents
    public var inputGVector: RGBAComponents
    public var inputBVector: RGBAComponents
    public var inputAVector: RGBAComponents
    public var inputBiasVector: RGBAComponents
    public init(inputRVector: RGBAComponents, inputGVector: RGBAComponents, inputBVector: RGBAComponents,  inputAVector: RGBAComponents, inputBiasVector: RGBAComponents) {
        self.inputRVector = inputRVector
        self.inputGVector = inputGVector
        self.inputBVector = inputBVector
        self.inputAVector = inputAVector
        self.inputBiasVector = inputBiasVector
    }
    public init() {
        self.inputRVector = RGBAComponents(r:1.0, g:0.0, b:0.0, a:0.0)
        self.inputGVector = RGBAComponents(r:0.0, g:1.0, b: 0.0, a:0.0)
        self.inputBVector = RGBAComponents(r:0.0, g:0.0, b:1.0, a:0.0)
        self.inputAVector = RGBAComponents(r:0.0, g:0.0, b:0.0, a:1.0)
        self.inputBiasVector = RGBAComponents(r:0.0, g:0.0, b:0.0, a:0.0)
    }
}

public struct TemperatureAndTintOptions {
    public var inputNeutral: TempAndTint
    public var targetInputNeutral: TempAndTint
    public init(inputNeutral: TempAndTint, targetInputNeutral: TempAndTint) {
        self.inputNeutral = inputNeutral
        self.targetInputNeutral = targetInputNeutral
    }
    public init() {
        self.inputNeutral = TempAndTint(temp: 6500.0, tint: 0.0)
        self.targetInputNeutral = TempAndTint(temp: 6500.0, tint: 0.0)
    }
}

public struct ToneCurveOptions {
    public var inputPoint1: XYOffset
    public var inputPoint2: XYOffset
    public var inputPoint3: XYOffset
    public var inputPoint4: XYOffset
    public init(inputPoint1: XYOffset, inputPoint2: XYOffset, inputPoint3: XYOffset, inputPoint4: XYOffset){
        self.inputPoint1 = inputPoint1
        self.inputPoint2 = inputPoint2
        self.inputPoint3 = inputPoint3
        self.inputPoint4 = inputPoint4
    }
    public init() {
        self.inputPoint1 = XYOffset(x:0.25, y:0.25)
        self.inputPoint2 = XYOffset(x:0.5, y:0.5)
        self.inputPoint3 = XYOffset(x:0.75, y:0.75)
        self.inputPoint4 = XYOffset(x:1.0, y:1.0)
    }
}

//MARK: ColorEffect options

public struct ColorClampOptions {
    public var inputMinComponents: RGBAComponents
    public var inputMaxComponents: RGBAComponents
    public init(inputMinComponents: RGBAComponents, inputMaxComponents: RGBAComponents){
        self.inputMinComponents = inputMinComponents
        self.inputMaxComponents = inputMaxComponents
    }
    public init() {
        self.inputMinComponents = RGBAComponents(r:0.0, g:0.0, b:0.0, a:0.0)
        self.inputMaxComponents = RGBAComponents(r:1.0, g:1.0, b:1.0, a:1.0)
    }
}

public struct ColorCrossPolynomialOptions {
    public var inputRedCoefficients: CrossPolynomialCoefficients
    public var inputGreenCoefficients: CrossPolynomialCoefficients
    public var inputBlueCoefficients: CrossPolynomialCoefficients
    public init(inputRedCoefficients: CrossPolynomialCoefficients, inputGreenCoefficients: CrossPolynomialCoefficients, inputBlueCoefficients: CrossPolynomialCoefficients) {
        self.inputRedCoefficients = inputRedCoefficients
        self.inputGreenCoefficients = inputGreenCoefficients
        self.inputBlueCoefficients = inputBlueCoefficients
    }
    public init() {
        self.inputRedCoefficients = CrossPolynomialCoefficients(a0: 1.0, a1: 0.0, a2: 0.0, a3: 0.0, a4: 0.0, a5: 0.0, a6: 0.0, a7: 0.0, a8: 0.0, a9: 0.0)
        self.inputGreenCoefficients = CrossPolynomialCoefficients(a0: 0.0, a1: 1.0, a2: 0.0, a3: 0.0, a4: 0.0, a5: 0.0, a6: 0.0, a7: 0.0, a8: 0.0, a9: 0.0)
        self.inputBlueCoefficients = CrossPolynomialCoefficients(a0: 0.0, a1: 1.0, a2: 0.0, a3: 0.0, a4: 0.0, a5: 0.0, a6: 0.0, a7: 0.0, a8: 0.0, a9: 0.0)
    }
}

public struct ColorMonochromeOptions {
    public var inputColor: CIColor
    public var inputIntensity: Double
    public init(inputColor: CIColor, inputIntensity: Double) {
        self.inputColor = inputColor
        self.inputIntensity = inputIntensity
    }
    public init() {
        self.inputColor = CIColor(red: 0.6, green: 0.45, blue: 0.3, alpha: 1.0)
        self.inputIntensity = 1.0
    }
}

public struct ColorPolynomialOptions {
    public var inputRedCoefficients:PolynomialCoefficients
    public var inputGreenCoefficients:PolynomialCoefficients
    public var inputBlueCoefficients:PolynomialCoefficients
    public var inputAlphaCoefficients: PolynomialCoefficients
    public init(inputRedCoefficients:PolynomialCoefficients, inputGreenCoefficients:PolynomialCoefficients, inputBlueCoefficients:PolynomialCoefficients, inputAlphaCoefficients:PolynomialCoefficients) {
        self.inputRedCoefficients = inputRedCoefficients
        self.inputGreenCoefficients = inputGreenCoefficients
        self.inputBlueCoefficients = inputBlueCoefficients
        self.inputAlphaCoefficients = inputAlphaCoefficients
    }
    public init() {
        let defaultCoefficients = PolynomialCoefficients(a0: 0.0, a1: 1.0, a2: 0.0, a3: 0.0)
        self.inputRedCoefficients = defaultCoefficients
        self.inputGreenCoefficients = defaultCoefficients
        self.inputBlueCoefficients = defaultCoefficients
        self.inputAlphaCoefficients = defaultCoefficients
    }
}

public struct FalseColorOptions {
    public var inputColor0: CIColor
    public var inputColor1: CIColor
    public init(inputColor0:CIColor, inputColor1: CIColor) {
        self.inputColor0 = inputColor0
        self.inputColor1 = inputColor1
    }
    public init() {
        self.inputColor0 = CIColor(red: 0.3, green: 0, blue: 0, alpha: 1.0)
        self.inputColor1 = CIColor(red: 1.0, green: 0.9, blue: 0.8, alpha: 1.0)
    }
}

public struct VignetteOptions {
    public var inputRadius:Double
    public var inputIntensity:Double
    public init(inputRadius:Double, inputIntensity:Double){
        self.inputRadius = inputRadius
        self.inputIntensity = inputIntensity
    }
    public init() {
        self.inputRadius = 1.0
        self.inputIntensity = 0.0
    }
}

public struct VignetteEffectOptions {
    public var inputCenter:XYPosition
    public var inputIntensity: Double
    public var inputRadius: Double
    public var inputFalloff: Double
    public init(inputCenter:XYPosition, inputIntensity: Double, inputRadius: Double, inputFalloff: Double) {
        self.inputCenter = inputCenter
        self.inputIntensity = inputIntensity
        self.inputRadius = inputRadius
        self.inputFalloff = inputFalloff
    }
    public init() {
        self.inputCenter = XYPosition(x:150.0, y:150.0)
        self.inputRadius = 150.0
        self.inputIntensity = 1.0
        self.inputFalloff = 0.5
    }
}


//MARK: DistortionEffect options

public struct BumpDistortionOptions {
    public var inputCenter: XYPosition
    public var inputRadius: Double
    public var inputScale: Double
    public init(inputCenter:XYPosition, inputRadius:Double, inputScale: Double) {
        self.inputCenter = inputCenter
        self.inputRadius = inputRadius
        self.inputScale = inputScale
    }
    public init() {
        self.inputCenter = XYPosition(x:150.0, y:150.0)
        self.inputRadius = 300.0
        self.inputScale = 0.5
    }
}

public struct BumpDistortionLinearOptions {
    public var inputCenter:XYPosition
    public var inputRadius:Double
    public var inputAngle:Double
    public var inputScale:Double
    public init(inputCenter:XYPosition, inputRadius:Double, inputAngle:Double, inputScale:Double) {
        self.inputCenter = inputCenter
        self.inputRadius = inputRadius
        self.inputAngle = inputAngle
        self.inputScale = inputScale
    }
    public init() {
        self.inputCenter = XYPosition(x:150.0, y:150.0)
        self.inputRadius = 300.0
        self.inputAngle = 0.0
        self.inputScale = 0.5
    }
}

public struct CircleSplashDistortionOptions {
    public var inputCenter:XYPosition
    public var inputRadius:Double
    public init(inputCenter:XYPosition, inputRadius:Double) {
        self.inputCenter = inputCenter
        self.inputRadius = inputRadius
    }
    public init() {
        self.inputCenter = XYPosition(x:150.0, y:150.0)
        self.inputRadius = 150.0
    }
}

public struct GlassDistortionOptions {
    public var inputCenter: XYPosition
    public var inputScale: Double
    public init(inputCenter: XYPosition, inputScale: Double) {
        self.inputCenter = inputCenter
        self.inputScale = inputScale
    }
    public init() {
        self.inputCenter = XYPosition(x: 150.0, y: 150.0)
        self.inputScale = 200.0
    }
}

public struct HoleDistortionOptions {
    public var inputCenter: XYPosition
    public var inputRadius: Double
    public init(inputCenter: XYPosition, inputRadius: Double) {
        self.inputCenter = inputCenter
        self.inputRadius = inputRadius
    }
    public init() {
        self.inputCenter = XYPosition(x: 150.0, y: 150.0)
        self.inputRadius = 150.0
    }
}

public struct LightTunnelOptions {
    public var inputCenter:XYPosition
    public var inputRotation:Double
    public var inputRadius:Double
    public init(inputCenter:XYPosition, inputRotation:Double, inputRadius:Double){
        self.inputCenter = inputCenter
        self.inputRotation = inputRotation
        self.inputRadius = inputRadius
    }
    public init() {
        self.inputCenter = XYPosition(x: 150.0, y: 150.0)
        self.inputRotation = 0.0
        self.inputRadius = 100.0
    }
}

public struct PinchDistortionOptions {
    public var inputCenter:XYPosition
    public var inputRadius:Double
    public var inputScale:Double
    public init(inputCenter:XYPosition, inputRadius:Double, inputScale:Double) {
        self.inputCenter = inputCenter
        self.inputRadius = inputRadius
        self.inputScale = inputScale
    }
    public init() {
        self.inputCenter = XYPosition(x: 150.0, y: 150.0)
        self.inputRadius = 300.0
        self.inputScale = 0.5
    }
}

public struct TwirlDistortionOptions {
    public var inputCenter:XYPosition
    public var inputRadius:Double
    public var inputAngle:Double
    public init(inputCenter:XYPosition, inputRadius:Double, inputAngle:Double){
        self.inputCenter = inputCenter
        self.inputRadius = inputRadius
        self.inputAngle = inputAngle
    }
    public init() {
        self.inputCenter = XYPosition(x: 150.0, y: 150.0)
        self.inputRadius = 300.0
        self.inputAngle = M_PI
    }
}

public struct VortexDistortionOptions {
    public var inputCenter:XYPosition
    public var inputRadius: Double
    public var inputAngle: Double
    public init(inputCenter:XYPosition, inputRadius: Double, inputAngle: Double) {
        self.inputCenter = inputCenter
        self.inputRadius = inputRadius
        self.inputAngle = inputAngle
    }
    public init() {
        self.inputCenter = XYPosition(x:150.0, y:150.0)
        self.inputRadius = 300.0
        self.inputAngle = M_PI * 8.0
    }
}


//MARK: Generator options

public struct AztecCodeGeneratorOptions {
    public var inputCorrectionLevel: Double
    public var inputLayers: Double
    public var inputCompactStyle: Bool
    public init(inputCorrectionLevel: Double, inputLayers: Double, inputCompactStyle: Bool){
        self.inputCorrectionLevel = inputCorrectionLevel
        self.inputLayers = inputLayers
        self.inputCompactStyle = inputCompactStyle
    }
    public init() {
        self.inputCorrectionLevel = 23.0
        self.inputLayers = 1.0
        self.inputCompactStyle = true
    }
}

public struct CheckerboardGeneratorOptions {
    public var inputCenter: XYPosition
    public var inputColor0: CIColor
    public var inputColor1: CIColor
    public var inputWidth: Double
    public var inputSharpness: Double
    public init(inputCenter: XYPosition, inputColor0: CIColor, inputColor1: CIColor, inputWidth: Double, inputSharpness:Double){
        self.inputCenter = inputCenter
        self.inputColor0 = inputColor0
        self.inputColor1 = inputColor1
        self.inputWidth = inputWidth
        self.inputSharpness = inputSharpness
    }
    public init() {
        self.inputCenter = XYPosition(x: 150.0, y: 150.0)
        self.inputColor0 = CIColor(red: 1.0, green: 1.0, blue: 1.0, alpha:1.0)
        self.inputColor1 = CIColor(red: 0.0, green: 0.0, blue: 0.0, alpha:0.0)
        self.inputWidth = 80.0
        self.inputSharpness = 1.0
    }
}

public struct StarShineGeneratorOptions {
    public var inputCenter: XYPosition
    public var inputColor:CIColor
    public var inputRadius: Double
    public var inputCrossScale: Double
    public var inputCrossAngle: Double
    public var inputCrossOpacity: Double
    public var inputCrossWidth: Double
    public var inputEpsilon: Double
    public init(inputCenter: XYPosition, inputColor:CIColor, inputRadius: Double, inputCrossScale: Double, inputCrossAngle: Double, inputCrossOpacity: Double, inputCrossWidth: Double, inputEpsilon: Double) {
        self.inputCenter = inputCenter
        self.inputColor = inputColor
        self.inputRadius = inputRadius
        self.inputCrossScale = inputCrossScale
        self.inputCrossAngle = inputCrossAngle
        self.inputCrossOpacity = inputCrossOpacity
        self.inputCrossWidth = inputCrossWidth
        self.inputEpsilon = inputEpsilon
    }
    public init() {
        self.inputCenter = XYPosition(x:150.0, y:150.0)
        self.inputColor = CIColor(red: 1.0, green: 0.8, blue: 0.6, alpha:1.0)
        self.inputRadius = 50.0
        self.inputCrossScale = 15.0
        self.inputCrossAngle = 0.6
        self.inputCrossOpacity = -2.0
        self.inputCrossWidth = 2.5
        self.inputEpsilon = -2.0
    }
}

public struct StripesGeneratorOptions {
    public var inputCenter: XYPosition
    public var inputColor0: CIColor
    public var inputColor1: CIColor
    public var inputWidth: Double
    public var inputSharpness: Double
    public init(inputCenter: XYPosition, inputColor0: CIColor, inputColor1: CIColor, inputWidth: Double, inputSharpness: Double) {
        self.inputCenter = inputCenter
        self.inputColor0 = inputColor0
        self.inputColor1 = inputColor1
        self.inputWidth = inputWidth
        self.inputSharpness = inputSharpness
    }
    public init() {
        self.inputCenter = XYPosition(x:150.0, y:150.0)
        self.inputColor0 = CIColor(red: 1.0, green: 1.0, blue: 1.0, alpha:1.0)
        self.inputColor1 = CIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        self.inputWidth = 80.0
        self.inputSharpness = 1.0
    }
}

//MARK: GeometryAdjustment options

public struct LanczosScaleTransformOptions {
    public var inputScale:Double
    public var inputAspectRatio:Double
    public init(inputScale:Double, inputAspectRatio:Double) {
        self.inputScale = inputScale
        self.inputAspectRatio = inputAspectRatio
    }
    public init() {
        self.inputScale = 1.0
        self.inputAspectRatio = 1.0
    }
}

public struct PerspectiveCorrectionOptions {
    public var inputTopLeft: XYPosition
    public var inputTopRight: XYPosition
    public var inputBottomLeft: XYPosition
    public var inputBottomRight:XYPosition
    public init(inputTopLeft: XYPosition, inputTopRight: XYPosition, inputBottomLeft: XYPosition, inputBottomRight:XYPosition) {
        self.inputTopLeft = inputTopLeft
        self.inputTopRight = inputTopRight
        self.inputBottomLeft = inputBottomLeft
        self.inputBottomRight = inputBottomRight
    }
    public init() {
        self.inputTopLeft = XYPosition(x: 118.0, y: 484.0)
        self.inputTopRight = XYPosition(x:646.0, y: 507.0)
        self.inputBottomLeft = XYPosition(x: 155.0, y: 153.0)
        self.inputBottomRight = XYPosition(x: 548.0, y: 140.0)
    }
}


//MARK: Gradient options

public struct GaussianGradientOptions {
    public var inputCenter: XYPosition
    public var inputColor0: CIColor
    public var inputColor1: CIColor
    public var inputRadius: Double
    public init(inputCenter: XYPosition, inputColor0: CIColor, inputColor1: CIColor, inputRadius: Double) {
        self.inputCenter = inputCenter
        self.inputColor0 = inputColor0
        self.inputColor1 = inputColor1
        self.inputRadius = inputRadius
    }
    public init() {
        self.inputCenter = XYPosition(x: 150.0, y: 150.0)
        self.inputColor0 = CIColor(red: 1.0, green: 1.0, blue: 1.0, alpha:1.0)
        self.inputColor1 = CIColor(red: 0.0, green: 0.0, blue: 0.0, alpha:0.0)
        self.inputRadius = 300.0
    }
}

public struct LinearGradientOptions {
    public var inputPoint0: XYPosition
    public var inputPoint1: XYPosition
    public var inputColor0: CIColor
    public var inputColor1: CIColor
    public init(inputPoint0: XYPosition, inputPoint1: XYPosition, inputColor0: CIColor, inputColor1: CIColor) {
        self.inputPoint0 = inputPoint0
        self.inputPoint1 = inputPoint1
        self.inputColor0 = inputColor0
        self.inputColor1 = inputColor1
    }
    public init() {
        self.inputPoint0 = XYPosition(x: 0.0, y: 0.0)
        self.inputPoint1 = XYPosition(x: 200.0, y: 200.0)
        self.inputColor0 = CIColor(red: 1.0, green: 1.0, blue: 1.0, alpha:1.0)
        self.inputColor1 = CIColor(red: 0.0, green: 0.0, blue: 0.0, alpha:1.0)
    }
}

public struct RadialGradientOptions {
    public var inputCenter: XYPosition
    public var inputRadius0: Double
    public var inputRadius1: Double
    public var inputColor0: CIColor
    public var inputColor1: CIColor
    public init(inputCenter: XYPosition, inputRadius0: Double, inputRadius1: Double, inputColor0: CIColor, inputColor1: CIColor) {
        self.inputCenter = inputCenter
        self.inputRadius0 = inputRadius0
        self.inputRadius1 = inputRadius1
        self.inputColor0 = inputColor0
        self.inputColor1 = inputColor1
    }
    public init() {
        self.inputCenter = XYPosition(x: 150.0, y: 150.0)
        self.inputRadius0 = 5.0
        self.inputRadius1 = 100.0
        self.inputColor0 = CIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.inputColor1 = CIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
    }
}

public struct SmoothLinearGradientOptions {
    public var inputPoint0: XYPosition
    public var inputPoint1: XYPosition
    public var inputColor0: CIColor
    public var inputColor1: CIColor
    public init(inputPoint0: XYPosition, inputPoint1: XYPosition, inputColor0: CIColor, inputColor1: CIColor) {
        self.inputPoint0 = inputPoint0
        self.inputPoint1 = inputPoint1
        self.inputColor0 = inputColor0
        self.inputColor1 = inputColor1
    }
    public init() {
        self.inputPoint0 = XYPosition(x: 0.0, y: 0.0)
        self.inputPoint1 = XYPosition(x: 200.0, y: 200.0)
        self.inputColor0 = CIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.inputColor1 = CIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
    }
}


//MARK: HalftoneEffect options

public struct CircularScreenOptions {
    public var inputCenter: XYPosition
    public var inputWidth: Double
    public var inputSharpness: Double
    public init(inputCenter: XYPosition, inputWidth: Double, inputSharpness: Double) {
        self.inputCenter = inputCenter
        self.inputWidth = inputWidth
        self.inputSharpness = inputSharpness
    }
    public init() {
        self.inputCenter = XYPosition(x: 150.0, y: 150.0)
        self.inputWidth = 6.0
        self.inputSharpness = 0.7
    }
}

public struct DotScreenOptions {
    public var inputCenter:XYPosition
    public var inputAngle:Double
    public var inputWidth:Double
    public var inputSharpness:Double
    public init(inputCenter:XYPosition, inputAngle:Double, inputWidth:Double, inputSharpness:Double) {
        self.inputCenter = inputCenter
        self.inputAngle = inputAngle
        self.inputWidth = inputWidth
        self.inputSharpness = inputSharpness
    }
    public init() {
        self.inputCenter = XYPosition(x:150.0, y:150.0)
        self.inputAngle = 0.0
        self.inputWidth = 6.0
        self.inputSharpness = 0.7
    }
}

public struct HatchedScreenOptions {
    public var inputCenter:XYPosition
    public var inputAngle:Double
    public var inputWidth:Double
    public var inputSharpness:Double
    public init(inputCenter:XYPosition, inputAngle:Double, inputWidth:Double, inputSharpness:Double) {
        self.inputCenter = inputCenter
        self.inputAngle = inputAngle
        self.inputWidth = inputWidth
        self.inputSharpness = inputSharpness
    }
    public init() {
        self.inputCenter = XYPosition(x: 150.0, y: 150.0)
        self.inputAngle = 0.0
        self.inputWidth = 6.0
        self.inputSharpness = 0.7
    }
}

public struct LineScreenOptions {
    public var inputCenter:XYPosition
    public var inputAngle:Double
    public var inputWidth:Double
    public var inputSharpness:Double
    public init(inputCenter:XYPosition, inputAngle:Double, inputWidth:Double, inputSharpness:Double) {
        self.inputCenter = inputCenter
        self.inputAngle = inputAngle
        self.inputWidth = inputWidth
        self.inputSharpness = inputSharpness
    }
    public init() {
        self.inputCenter = XYPosition(x: 150.0, y: 150.0)
        self.inputAngle = 0.0
        self.inputWidth = 6.0
        self.inputSharpness = 0.7
    }
}

//MARK: Reduction options

public struct AreaHistogramOptions {
    public var inputExtent:CGRect
    public var inputCount: Int
    public var inputScale: Double
    public init(inputExtent:CGRect, inputCount: Int, inputScale: Double) {
        self.inputExtent = inputExtent
        self.inputCount = inputCount
        self.inputScale = inputScale
    }
    public init() {
        self.inputExtent = CGRect(x: 0.0, y: 0.0, width: 300.0, height: 300.0)
        self.inputCount = 64
        self.inputScale = 1.0
    }
}

public struct HistogramDisplayOptions {
    public var inputHeight: Double
    public var inputHighLimit: Double
    public var inputLowLimit: Double
    public init(inputHeight: Double, inputHighLimit: Double, inputLowLimit: Double) {
        self.inputHeight = inputHeight
        self.inputHighLimit = inputHighLimit
        self.inputLowLimit = inputLowLimit
    }
    public init() {
        self.inputHeight = 0.0
        self.inputHighLimit = 1.0
        self.inputLowLimit = 0.0
    }
}

//MARK: Sharpen options

public struct UnsharpMaskOptions {
    public var inputRadius: Double
    public var inputIntensity: Double
    public init(inputRadius: Double, inputIntensity: Double) {
        self.inputRadius = inputRadius
        self.inputIntensity = inputIntensity
    }
    public init() {
        self.inputRadius = 2.5
        self.inputIntensity = 0.5
    }
}

//MARK: Stylize options

public struct BloomOptions {
    public var inputRadius: Double
    public var inputIntensity: Double
    public init(inputRadius: Double, inputIntensity: Double) {
        self.inputRadius = inputRadius
        self.inputIntensity = inputIntensity
    }
    public init() {
        self.inputRadius = 10.0
        self.inputIntensity = 1.0
    }
}

public struct Convolution3X3Options {
    public var inputWeights: ConvolutionMatrix3X3
    public var inputBias: Double
    public init(inputWeights: ConvolutionMatrix3X3, inputBias: Double) {
        self.inputWeights = inputWeights
        self.inputBias = inputBias
    }
    public init() {
        self.inputWeights = ConvolutionMatrix3X3(w00: 0.0, w01: 0.0, w02: 0.0, w10: 0.0, w11: 1.0, w12: 0.0, w20: 0.0, w21: 0.0, w22: 0.0)
        self.inputBias = 0.0
    }
}

public struct Convolution5X5Options {
    public var inputWeights:ConvolutionMatrix5X5
    public var inputBias: Double
    public init(inputWeights:ConvolutionMatrix5X5, inputBias: Double) {
        self.inputWeights = inputWeights
        self.inputBias = inputBias
    }
    public init() {
        self.inputWeights = ConvolutionMatrix5X5(w00: 0.0, w01: 0.0, w02: 0.0, w03: 0.0, w04: 0.0, w10: 0.0, w11: 0.0, w12: 0.0, w13: 0.0, w14: 0.0, w20: 0.0, w21: 0.0, w22: 1.0, w23: 0.0, w24: 0.0, w30: 0.0, w31: 0.0, w32: 0.0, w33: 0.0, w34: 0.0, w40: 0.0, w41: 0.0, w42: 0.0, w43: 0.0, w44: 0.0)
        self.inputBias = 0.0
    }
}

public struct Convolution9Options {
    public var inputWeights:ConvolutionVector9
    public var inputBias: Double
    public init(inputWeights:ConvolutionVector9, inputBias: Double) {
        self.inputWeights = inputWeights
        self.inputBias = inputBias
    }
    public init() {
        self.inputWeights = ConvolutionVector9(w0: 0.0, w1:0.0, w2: 0.0, w3: 0.0, w4: 1.0, w5: 0.0, w6: 0.0, w7: 0.0, w8: 0.0)
        self.inputBias = 0.0
    }
}

public struct HighlightShadowOptions {
    public var inputHighlightAmount: Double
    public var inputShadowAmount: Double
    public var inputRadius: Double
    public init(inputHighlightAmount: Double, inputShadowAmount: Double, inputRadius: Double) {
        self.inputHighlightAmount = inputHighlightAmount
        self.inputShadowAmount = inputShadowAmount
        self.inputRadius = inputRadius
    }
    public init() {
        self.inputHighlightAmount = 1.0
        self.inputShadowAmount = 0.0
        self.inputRadius = 0.0
    }
}

public struct PixellateOptions {
    public var inputCenter: XYPosition
    public var inputScale: Double
    public init(inputCenter: XYPosition, inputScale: Double) {
        self.inputCenter = inputCenter
        self.inputScale = inputScale
    }
    public init() {
        self.inputCenter = XYPosition(x: 150.0, y: 150.0)
        self.inputScale = 8.0
    }
}

//MARK: Tile options

public struct TileOptions {
    public var inputCenter: XYPosition
    public var inputAngle: Double
    public var inputWidth: Double
    public init(inputCenter: XYPosition, inputAngle: Double, inputWidth: Double){
        self.inputCenter = inputCenter
        self.inputAngle = inputAngle
        self.inputWidth = inputWidth
    }
    public init() {
        self.inputCenter = XYPosition(x: 150.0, y: 150.0)
        self.inputAngle = 0.0
        self.inputWidth = 100.0
    }
}

public struct TileOptionsWithAcuteAngle {
    public var inputCenter: XYPosition
    public var inputAngle: Double
    public var inputAcuteAngle: Double
    public var inputWidth: Double
    public init(inputCenter: XYPosition, inputAngle: Double, inputAcuteAngle: Double, inputWidth: Double){
        self.inputCenter = inputCenter
        self.inputAngle = inputAngle
        self.inputAcuteAngle = inputAcuteAngle
        self.inputWidth = inputWidth
    }
    public init() {
        self.inputCenter = XYPosition(x: 150.0, y: 150.0)
        self.inputAngle = 0.0
        self.inputAcuteAngle = M_PI_2
        self.inputWidth = 100.0
    }
}

public struct TriangleKaleidoscopeOptions {
    public var inputPoint: XYPosition
    public var inputSize: Double
    public var inputRotation: Double
    public var inputDecay: Double
    public init(inputPoint: XYPosition, inputSize: Double, inputRotation: Double, inputDecay: Double) {
        self.inputPoint = inputPoint
        self.inputSize = inputSize
        self.inputRotation = inputRotation
        self.inputDecay = inputDecay
    }
    public init() {
        self.inputPoint = XYPosition(x: 150.0, y: 150.0)
        self.inputSize = 700.0
        self.inputRotation = 5.924285296593801
        self.inputDecay = 0.85
    }
}

