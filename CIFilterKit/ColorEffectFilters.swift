//
//  ColorAdjustmentFilters.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 5/17/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Foundation

public func ColorClamp(#inputMinComponents: RGBAComponents?, #inputMaxComponents:RGBAComponents?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            "inputMinComponents": inputMinComponents?.vector(),
            "inputMaxComponents": inputMaxComponents?.vector()
        ])
        let filter = CIFilter(name: "CIColorClamp", withInputParameters: parameters)
        return filter.outputImage
    }
}

public func ColorCrossPolynomial(#inputRedCoefficients: CrossPolynomialCoefficients?, #inputGreenCoefficients: CrossPolynomialCoefficients?, #inputBlueCoefficients: CrossPolynomialCoefficients?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            "inputRedCoefficients": inputRedCoefficients?.vector(),
            "inputGreenCoefficients": inputGreenCoefficients?.vector(),
            "inputBlueCoefficients": inputBlueCoefficients?.vector()
        ])
        let filter = CIFilter(name:"CIColorCrossPolynomial", withInputParameters:parameters)
        return filter.outputImage
    }
}

public func ColorCube(#inputCube:Array<RGBAComponents>?) -> Filter {
    return { image in
        var optionalArray : Array<Float>? = nil
        var optionalInputCubeDimension: Int? = nil
        var optionalData: NSData? = nil
        if let actualCube = inputCube {
            if countIsCube(actualCube.count) {
                optionalArray = actualCube.map { [Float($0.r), Float($0.g), Float($0.b), Float($0.a)] }.reduce([], combine: +) as Array
                optionalInputCubeDimension = cubeRoot(actualCube.count)
                optionalData = NSData(bytes: optionalArray!, length: optionalArray!.count * sizeof(Float))
            }
        }
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            "inputCubeDimension": optionalInputCubeDimension,
            "inputCubeData": optionalData
        ])
        let filter = CIFilter(name: "CIColorCube", withInputParameters: parameters)
        return filter.outputImage
    }
}

//TODO: Need to make sure that the inputColorSpace cast provides expected behavior
public func ColorCubeWithColorSpace(#inputCube:Array<RGBAComponents>?, #inputColorSpace:CGColorSpaceRef?) -> Filter {
    return { image in
        var optionalArray : Array<Float>? = nil
        var optionalInputCubeDimension: Int? = nil
        var optionalData: NSData? = nil
        if let actualCube = inputCube {
            if countIsCube(actualCube.count) {
                optionalArray = actualCube.map { [Float($0.r), Float($0.g), Float($0.b), Float($0.a)] }.reduce([], combine: +) as Array
                optionalInputCubeDimension = cubeRoot(actualCube.count)
                optionalData = NSData(bytes: optionalArray!, length: optionalArray!.count * sizeof(Float))
            }
        }
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            "inputCubeDimension": optionalInputCubeDimension,
            "inputCubeData": optionalData,
            "inputColorSpace": inputColorSpace
        ])
        let filter = CIFilter(name: "CIColorCubeWithColorSpace", withInputParameters: parameters)
        return filter.outputImage
    }
}


public func ColorInvert() -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey :image
        ]
        let filter = CIFilter(name:"CIColorInvert", withInputParameters:parameters)
        return filter.outputImage
    }
}
public func ColorMap(#inputGradientImage:CIImage?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey :image,
            "inputGradientImage": inputGradientImage
        ])
        let filter = CIFilter(name:"CIColorMap", withInputParameters:parameters)
        return filter.outputImage
    }
}
public func ColorMonochrome(#inputColor:CIColor?, #inputIntensity:Double?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey :image,
            kCIInputColorKey: inputColor,
            kCIInputIntensityKey: inputIntensity
        ])
        let filter = CIFilter(name:"CIColorMonochrome", withInputParameters:parameters)
        return filter.outputImage
    }
}
public func ColorPolynomial(#inputRedCoefficients:PolynomialCoefficients?, #inputGreenCoefficients:PolynomialCoefficients?, #inputBlueCoefficients:PolynomialCoefficients?, #inputAlphaCoefficients: PolynomialCoefficients?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey :image,
            "inputRedCoefficients": inputRedCoefficients?.vector(),
            "inputGreenCoefficients": inputGreenCoefficients?.vector(),
            "inputBlueCoefficients": inputBlueCoefficients?.vector(),
            "inputAlphaCoefficients": inputAlphaCoefficients?.vector()
        ])
        let filter = CIFilter(name:"CIColorPolynomial", withInputParameters:parameters)
        return filter.outputImage
    }
}
public func ColorPosterize(#inputLevels:Double) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey :image,
            "inputLevels": inputLevels
        ])
        let filter = CIFilter(name:"CIColorPosterize", withInputParameters:parameters)
        return filter.outputImage
    }
}

public func FalseColor(#inputColor0:CIColor, #inputColor1: CIColor) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey :image,
            "inputColor0": inputColor0,
            "inputColor1": inputColor1
        ]
        let filter = CIFilter(name:"CIFalseColor", withInputParameters:parameters)
        return filter.outputImage
    }
}
public func MaskToAlpha() -> Filter {
    return noParamsFilter("CIMaskToAlpha")
}
public func MaximumComponent() -> Filter {
    return noParamsFilter("CIMaximumComponent")
}
public func MinimumComponent() -> Filter {
    return noParamsFilter("CIMinimumComponent")
}

public func PhotoEffectChrome() -> Filter {
    return noParamsFilter("CIMinimumComponent")
}

public func PhotoEffectFade() -> Filter {
    return noParamsFilter("CIPhotoEffectFade")
}
public func PhotoEffectInstant() -> Filter {
    return noParamsFilter("CIPhotoEffectInstant")
}
public func PhotoEffectMono() -> Filter {
    return noParamsFilter("CIPhotoEffectMono")
}
public func PhotoEffectNoir() -> Filter {
    return noParamsFilter("CIPhotoEffectNoir")
}
public func PhotoEffectProcess() -> Filter {
    return noParamsFilter("CIPhotoEffectProcess")
}
public func PhotoEffectTonal() -> Filter {
    return noParamsFilter("CIPhotoEffectTonal")
}
public func PhotoEffectTransfer() -> Filter {
    return noParamsFilter("CIPhotoEffectTransfer")
}
public func SepiaTone(#inputIntensity:Float? ) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            kCIInputIntensityKey: inputIntensity
        ])
        let filter = CIFilter(name:"CISepiaTone", withInputParameters:parameters)
        return filter.outputImage
    }
}
public func Vignette(#inputRadius:Float, #inputIntensity:Float) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            kCIInputRadiusKey: inputRadius,
            kCIInputIntensityKey: inputIntensity
        ])
        let filter = CIFilter(name:"CIVignette", withInputParameters:parameters)
        return filter.outputImage
    }
}
public func VignetteEffect(#inputCenter:CIVector, #inputIntensity: Float, #inputRadius: Float) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            kCIInputCenterKey: inputCenter,
            kCIInputIntensityKey: inputIntensity,
            kCIInputRadiusKey: inputRadius
        ])
        let filter = CIFilter(name:"CIVignetteEffect", withInputParameters:parameters)
        return filter.outputImage
    }
}