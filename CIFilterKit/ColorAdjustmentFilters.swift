//
//  ColorAdjustmentFilters.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 5/24/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Foundation

public func ColorControls(options: ColorControlsOptions) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey: image,
            kCIInputSaturationKey: options.inputSaturation,
            kCIInputBrightnessKey: options.inputBrightness,
            kCIInputContrastKey: options.inputContrast
            ]
        let filter = CIFilter(name:FilterName.ColorControls.rawValue, withInputParameters:parameters)
        return filter.outputImage
    }
}

public func ColorMatrix(options: ColorMatrixOptions) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey: image,
            "inputRVector": options.inputRVector.vector(),
            "inputGVector": options.inputGVector.vector(),
            "inputBVector": options.inputBVector.vector(),
            "inputAVector": options.inputAVector.vector(),
            "inputBiasVector": options.inputBiasVector.vector()
        ]
        let filter = CIFilter(name:FilterName.ColorMatrix.rawValue, withInputParameters:parameters)
        return filter.outputImage
    }
}

public func ExposureAdjust(inputEV: Double?) -> Filter {
    return { image in
        var parameters: Parameters = [
            kCIInputImageKey: image,
        ]
        if let ev = inputEV {
            parameters[kCIInputEVKey] = ev
        }
        let filter = CIFilter(name:FilterName.ExposureAdjust.rawValue, withInputParameters:parameters)
        return filter.outputImage
    }
}

public func GammaAdjust(inputPower: Double?) -> Filter {
    return { image in
        var parameters: Parameters = [
            kCIInputImageKey: image
        ]
        if let power = inputPower {
            parameters["inputPower"] = power
        }
        let filter = CIFilter(name:FilterName.GammaAdjust.rawValue, withInputParameters:parameters)
        return filter.outputImage
    }
}

public func HueAdjust(inputAngle: Double?) -> Filter {
    return { image in
        var parameters: Parameters = [
            kCIInputImageKey: image
        ]
        if let angle = inputAngle {
            parameters[kCIInputAngleKey] = angle
        }
        let filter = CIFilter(name:FilterName.HueAdjust.rawValue, withInputParameters:parameters)
        return filter.outputImage
    }
}
public func LinearToSRGBToneCurve() -> Filter {
    return noParamsFilter(FilterName.LinearToSRGBToneCurve.rawValue)
}
public func SRGBToneCurveToLinear() -> Filter {
    return noParamsFilter(FilterName.SRGBToneCurveToLinear.rawValue)
}

public func TemperatureAndTint(options: TemperatureAndTintOptions) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey: image,
            "inputNeutral": options.inputNeutral.vector(),
            "inputTargetNeutral": options.targetInputNeutral.vector()
        ]
        let filter = CIFilter(name:FilterName.TemperatureAndTint.rawValue, withInputParameters:parameters)
        return filter.outputImage
    }
}

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
        return filter.outputImage
    }
}

public func Vibrance(inputAmount: Double?) -> Filter {
    return { image in
        var parameters: Parameters = [
            kCIInputImageKey: image
        ]
        if let amount = inputAmount {
            parameters["inputAmount"] = amount
        }
        let filter = CIFilter(name:FilterName.Vibrance.rawValue, withInputParameters:parameters)
        return filter.outputImage
    }
}

public func WhitePointAdjust(inputColor: CIColor?) -> Filter {
    return { image in
        var parameters: Parameters = [
            kCIInputImageKey: image
        ]
        if let color = inputColor {
            parameters[kCIInputColorKey] = color
        }
        let filter = CIFilter(name:FilterName.WhitePointAdjust.rawValue, withInputParameters:parameters)
        return filter.outputImage
    }
}