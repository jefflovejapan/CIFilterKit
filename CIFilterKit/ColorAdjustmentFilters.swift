//
//  ColorAdjustmentFilters.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 5/24/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Foundation

public func ColorControls(#inputSaturation: Double?, #inputBrightness: Double?, #inputContrast: Double?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            kCIInputSaturationKey: inputSaturation,
            kCIInputBrightnessKey: inputBrightness,
            kCIInputContrastKey: inputContrast
            ])
        let filter = CIFilter(name:"CIColorControls", withInputParameters:parameters)
        return filter.outputImage
    }
}
public func ColorMatrix(#inputRVector:RGBAComponents? , #inputGVector: RGBAComponents?, #inputBVector: RGBAComponents?, #inputAVector: RGBAComponents?, #inputBiasVector: RGBAComponents?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            "InputRVector": inputRVector?.vector(),
            "InputGVector": inputGVector?.vector(),
            "InputBVector": inputBVector?.vector(),
            "InputAVector": inputAVector?.vector(),
            "InputBiasVector": inputBiasVector?.vector()
            ])
        let filter = CIFilter(name:"CIColorMatrix", withInputParameters:parameters)
        return filter.outputImage
    }
}
public func ExposureAdjust(#inputEV:Double?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            kCIInputEVKey: inputEV
            ])
        let filter = CIFilter(name:"CIExposureAdjust", withInputParameters:parameters)
        return filter.outputImage
    }
}
public func GammaAdjust(#inputPower: Double?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            "inputPower": inputPower
            ])
        let filter = CIFilter(name:"CIGammaAdjust", withInputParameters:parameters)
        return filter.outputImage
    }
}
public func HueAdjust(#inputAngle:Double?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            kCIInputAngleKey: inputAngle
            ])
        let filter = CIFilter(name:"CIHueAdjust", withInputParameters:parameters)
        return filter.outputImage
    }
}
public func LinearToSRGBToneCurve() -> Filter {
    return noParamsFilter("CILinearToSRGBToneCurve")
}
public func SRGBToneCurveToLinear() -> Filter {
    return noParamsFilter("CISRGBToneCurveToLinear")
}
public func TemperatureAndTint(#inputNeutral: TempAndTint?, #targetInputNeutral: TempAndTint?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            "inputNeutral": inputNeutral?.vector(),
            "inputTargetNeutral": targetInputNeutral?.vector()
            ])
        let filter = CIFilter(name:"CITemperatureAndTint", withInputParameters:parameters)
        return filter.outputImage
    }
}
public func ToneCurve(#inputPoint0: XYOffset?, #inputPoint1: XYOffset?, #inputPoint2: XYOffset?, #inputPoint3: XYOffset?, #inputPoint4: XYOffset?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            "inputPoint0": inputPoint0?.vector(),
            "inputPoint1": inputPoint1?.vector(),
            "inputPoint2": inputPoint2?.vector(),
            "inputPoint3": inputPoint3?.vector(),
            "inputPoint4": inputPoint4?.vector()
            ])
        let filter = CIFilter(name:"CIToneCurve", withInputParameters:parameters)
        return filter.outputImage
    }
}
public func Vibrance(#inputAmount: Double?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            "inputAmount": inputAmount
            ])
        let filter = CIFilter(name:"CIVibrance", withInputParameters:parameters)
        return filter.outputImage
    }
}
public func WhitePointAdjust(#inputColor: CIColor?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            kCIInputColorKey: inputColor
            ])
        let filter = CIFilter(name:"CIWhitePointAdjust", withInputParameters:parameters)
        return filter.outputImage
    }
}