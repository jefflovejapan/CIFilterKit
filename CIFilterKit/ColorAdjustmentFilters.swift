//
//  ColorAdjustmentFilters.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 5/24/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Foundation

/**
    - parameter options: An instance of `ColorControlsOptions`
    - returns: A closure of type `Filter`
*/

public func ColorControls(options: ColorControlsOptions) -> Filter {
    return { image in
        let parameters: Parameters = [
            kCIInputImageKey: image,
            kCIInputSaturationKey: options.inputSaturation,
            kCIInputBrightnessKey: options.inputBrightness,
            kCIInputContrastKey: options.inputContrast
            ]
        let filter = CIFilter(name:FilterName.ColorControls.rawValue, withInputParameters:parameters)
        return filter?.outputImage
    }
}

/**
    - parameter options: An instance of `ColorMatrixOptions`
    - returns: A closure of type `Filter`
*/

public func ColorMatrix(options: ColorMatrixOptions) -> Filter {
    return { image in
        let parameters: Parameters = [
            kCIInputImageKey: image,
            "inputRVector": options.inputRVector.vector(),
            "inputGVector": options.inputGVector.vector(),
            "inputBVector": options.inputBVector.vector(),
            "inputAVector": options.inputAVector.vector(),
            "inputBiasVector": options.inputBiasVector.vector()
        ]
        let filter = CIFilter(name:FilterName.ColorMatrix.rawValue, withInputParameters:parameters)
        return filter?.outputImage
    }
}

/**
    - parameter inputEV: The amount of exposure adjustment to be applied (positive or negative).
    - returns: A closure of type `Filter`
*/

public func ExposureAdjust(inputEV: Double?) -> Filter {
    return { image in
        var parameters: Parameters = [
            kCIInputImageKey: image,
        ]
        if let ev = inputEV {
            parameters[kCIInputEVKey] = ev
        }
        let filter = CIFilter(name:FilterName.ExposureAdjust.rawValue, withInputParameters:parameters)
        return filter?.outputImage
    }
}

/**
    - parameter inputPower: The power to apply to the gamma correction function. See [Wikipedia](https://en.wikipedia.org/wiki/Gamma_correction)
    - returns: A closure of type `Filter`
*/

public func GammaAdjust(inputPower: Double?) -> Filter {
    return { image in
        var parameters: Parameters = [
            kCIInputImageKey: image
        ]
        if let power = inputPower {
            parameters["inputPower"] = power
        }
        let filter = CIFilter(name:FilterName.GammaAdjust.rawValue, withInputParameters:parameters)
        return filter?.outputImage
    }
}

/**
    - parameter inputAngle: The angle by which to offset the image's hue, in radians.
    - returns: A closure of type `Filter`
*/

public func HueAdjust(inputAngle: Double?) -> Filter {
    return { image in
        var parameters: Parameters = [
            kCIInputImageKey: image
        ]
        if let angle = inputAngle {
            parameters[kCIInputAngleKey] = angle
        }
        let filter = CIFilter(name:FilterName.HueAdjust.rawValue, withInputParameters:parameters)
        return filter?.outputImage
    }
}

/**
    Used to convert from a linear gamma curve to the sRGB color space. See [CILinearToSRGBToneCurve](https://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CILinearToSRGBToneCurve)
    - returns: A closure of type `Filter`
*/
public func LinearToSRGBToneCurve() -> Filter {
    return noParamsFilter(name: FilterName.LinearToSRGBToneCurve.rawValue)
}

/**
    Used to convert from the sRGB color space to a linear gamma curve. See [CISRGBToneCurveToLinear](https://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CISRGBToneCurveToLinear)
    - returns: A closure of type `Filter`
*/
public func SRGBToneCurveToLinear() -> Filter {
    return noParamsFilter(name: FilterName.SRGBToneCurveToLinear.rawValue)
}

/**
    - parameter options: An instance of `TemperatureAndTintOptions`
    - returns: A closure of type `Filter`
*/

public func TemperatureAndTint(options: TemperatureAndTintOptions) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey: image,
            "inputNeutral": options.inputNeutral.vector(),
            "inputTargetNeutral": options.targetInputNeutral.vector()
        ]
        let filter = CIFilter(name:FilterName.TemperatureAndTint.rawValue, withInputParameters:parameters)
        return filter?.outputImage
    }
}

/**
    - parameter options: An instance of `ToneCurveOptions`
    - returns: A closure of type `Filter`
*/

public func ToneCurve(options: ToneCurveOptions) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey: image,
            "inputPoint1": options.inputPoint1.vector(),
            "inputPoint2": options.inputPoint2.vector(),
            "inputPoint3": options.inputPoint3.vector(),
            "inputPoint4": options.inputPoint4.vector()
        ]
        let filter = CIFilter(name:FilterName.ToneCurve.rawValue, withInputParameters:parameters)
        return filter?.outputImage
    }
}

/**
    - parameter inputAmount: The amount by which to offset the image's vibrance.
    - returns: A closure of type `Filter`
*/

public func Vibrance(inputAmount: Double?) -> Filter {
    return { image in
        var parameters: Parameters = [
            kCIInputImageKey: image
        ]
        if let amount = inputAmount {
            parameters["inputAmount"] = amount
        }
        let filter = CIFilter(name:FilterName.Vibrance.rawValue, withInputParameters:parameters)
        return filter?.outputImage
    }
}

/**
    - parameter inputColor: The new white point for your image.
    - returns: A closure of type `Filter`
*/

public func WhitePointAdjust(inputColor: CIColor?) -> Filter {
    return { image in
        var parameters: Parameters = [
            kCIInputImageKey: image
        ]
        if let color = inputColor {
            parameters[kCIInputColorKey] = color
        }
        let filter = CIFilter(name:FilterName.WhitePointAdjust.rawValue, withInputParameters:parameters)
        return filter?.outputImage
    }
}
