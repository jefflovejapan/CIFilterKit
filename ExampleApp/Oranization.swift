//
//  Organization.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 6/10/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Foundation
import CIFilterKit

let BlurFilters: Array<FilterName> = [.GaussianBlur, .MotionBlur, .ZoomBlur]
let ColorAdjustmentFilters: Array<FilterName> = [.ColorControls, .ColorMatrix, .ExposureAdjust, .GammaAdjust, .HueAdjust, .LinearToSRGBToneCurve, .SRGBToneCurveToLinear, .TemperatureAndTint, .ToneCurve, .Vibrance, .WhitePointAdjust]
let ColorEffectFilters: Array<FilterName> = [.ColorClamp, .ColorCrossPolynomial, .ColorCube, .ColorCubeWithColorSpace, .ColorInvert, .ColorMap, .ColorMonochrome, .ColorPolynomial, .ColorPosterize, .FalseColor, .MaskToAlpha, .MaximumComponent, .MinimumComponent, .PhotoEffectChrome, .PhotoEffectFade, .PhotoEffectInstant, .PhotoEffectMono, .PhotoEffectNoir, .PhotoEffectProcess, .PhotoEffectTonal, .PhotoEffectTransfer, .SepiaTone, .Vignette, .VignetteEffect]
let CompositeOperationFilters: Array<FilterName> = [.AdditionCompositing, .ColorBlendMode, .ColorBurnBlendMode, .ColorDodgeBlendMode, .DarkenBlendMode, .DifferenceBlendMode, .DivideBlendMode, .ExclusionBlendMode, .HardLightBlendMode, .HueBlendMode, .LightenBlendMode, .LinearBurnBlendMode, .LinearDodgeBlendMode, .LuminosityBlendMode, .MaximumCompositing, .MinimumCompositing, .MultiplyBlendMode, .MultiplyCompositing, .OverlayBlendMode, .PinLightBlendMode, .SaturationBlendMode, .ScreenBlendMode, .SoftLightBlendMode, .SourceAtopCompositing, .SourceInCompositing, .SourceOutCompositing, .SourceOverCompositing, .SubtractBlendMode]
let DistortionEffectFilters: Array<FilterName> = [.BumpDistortion, .BumpDistortionLinear, .CircleSplashDistortion, .GlassDistortion, .HoleDistortion, .LightTunnel, .PinchDistortion, .TwirlDistortion, .VortexDistortion]
let GeometryAdjustFilters: Array<FilterName> = [.AffineTransform, .Crop, .LanczosScaleTransform, .PerspectiveCorrection, .PerspectiveTile, .PerspectiveTransform, .PerspectiveTransformWithExtent, .StraightenFilter]
let HalftoneEffectFilters: Array<FilterName> = [.CircularScreen, .DotScreen, .HatchedScreen, .LineScreen]
let ReductionFilters: Array<FilterName> = [.AreaHistogram, .HistogramDisplayFilter]
let SharpenFilters: Array<FilterName> = [.SharpenLuminance, .UnsharpMask]
let StylizeFilters: Array<FilterName> = [.BlendWithAlphaMask, .BlendWithMask, .Bloom, .Convolution3X3, .Convolution5X5, .Convolution9Horizontal, .Convolution9Vertical, .Gloom, .HighlightShadowAdjust, .Pixellate]
let TileEffectFilters: Array<FilterName> = [.AffineClamp, .AffineTile, .EightfoldReflectedTile, .FourfoldReflectedTile, .FourfoldRotatedTile, .FourfoldTranslatedTile, .GlideReflectedTile, .SixfoldReflectedTile, .SixfoldRotatedTile, .TriangleKaleidoscope, .TwelvefoldReflectedTile]


let Gradients: Array<FilterName> = [.GaussianGradient, .LinearGradient, .RadialGradient, .SmoothLinearGradient]
let Generators: Array<FilterName> = [.AztecCodeGenerator, .CheckerboardGenerator, .Code128BarcodeGenerator, .ConstantColorGenerator, .QRCodeGenerator, .RandomGenerator, .StarShineGenerator, .StripesGenerator]


let TrueFilters = [BlurFilters, ColorAdjustmentFilters, ColorEffectFilters, CompositeOperationFilters, DistortionEffectFilters, GeometryAdjustFilters, HalftoneEffectFilters, ReductionFilters, SharpenFilters, StylizeFilters, TileEffectFilters]
let GeneratorFilters = [Gradients, Generators]


