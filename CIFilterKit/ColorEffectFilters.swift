//
//  ColorAdjustmentFilters.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 5/17/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Foundation


/**
- parameter options: An instance of `ColorClampOptions`
- returns: A closure of type `Filter`
*/
public func ColorClamp(options: ColorClampOptions) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey: image,
            "inputMinComponents": options.inputMinComponents.vector(),
            "inputMaxComponents": options.inputMaxComponents.vector()
        ]
        let filter = CIFilter(name: FilterName.ColorClamp.rawValue, withInputParameters: parameters)
        return filter?.outputImage
    }
}

/**
- parameter options: An instance of `ColorCrossPolynomialOptions`
- returns: A closure of type `Filter`
*/

public func ColorCrossPolynomial(options: ColorCrossPolynomialOptions) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey: image,
            "inputRedCoefficients": options.inputRedCoefficients.vector(),
            "inputGreenCoefficients": options.inputGreenCoefficients.vector(),
            "inputBlueCoefficients": options.inputBlueCoefficients.vector()
        ]
        let filter = CIFilter(name:FilterName.ColorCrossPolynomial.rawValue, withInputParameters:parameters)
        return filter?.outputImage
    }
}

/**
`ColorCube` is used to produce a 3D lookup table for transforming pixel data. See [GPU Gems 2](http://http.developer.nvidia.com/GPUGems2/gpugems2_chapter24.html).

- parameter inputCube: An instance of `ColorCubeData`. The size of `inputCube` must be a cube (i.e., contain 8, 27, etc. elements).
- returns: A closure of type `Filter`
*/

public func ColorCube(inputCube:ColorCubeData) -> Filter {
    return { image in
        var optionalInputCubeDimension: Int? = nil
        var optionalData: NSData? = nil
        if countIsCube(inputCube.count) {
            let asVector = inputCube.map { [Float($0.r), Float($0.g), Float($0.b), Float($0.a)] }
            let vectorArray = asVector.reduce([], combine: +) as Array
            optionalInputCubeDimension = cubeRoot(inputCube.count)
            optionalData = NSData(bytes: vectorArray, length: vectorArray.count * sizeof(Float))
        }
        var parameters: Parameters = [
            kCIInputImageKey: image
        ]
        if let data = optionalData, dimension = optionalInputCubeDimension {
            parameters["inputCubeDimension"] = dimension
            parameters["inputCubeData"] = data
        }
        let filter = CIFilter(name: FilterName.ColorCube.rawValue, withInputParameters: parameters)
        return filter?.outputImage
    }
}

/**
The same as `ColorCube`, but with the ability to set an input color space.

- parameter inputCube: An instance of `ColorCubeData`.
- parameter inputColorSpace: A `CGColorSpaceRef`
- returns: A closure of type `Filter`
*/

public func ColorCubeWithColorSpace(inputCube:ColorCubeData, inputColorSpace:CGColorSpaceRef?) -> Filter {
    return { image in
        var optionalInputCubeDimension: Int? = nil
        var optionalData: NSData? = nil
        if countIsCube(inputCube.count) {
            let asVector = inputCube.map { [Float($0.r), Float($0.g), Float($0.b), Float($0.a)] }
            let vectorArray = asVector.reduce([], combine: +) as Array
            optionalInputCubeDimension = cubeRoot(inputCube.count)
            optionalData = NSData(bytes: vectorArray, length: vectorArray.count * sizeof(Float))
        }
        var parameters: Parameters = [
            kCIInputImageKey: image
        ]
        
        if let colorSpace = inputColorSpace {
            parameters["inputColorSpace"] = colorSpace
        }
        
        if let data = optionalData, dimension = optionalInputCubeDimension {
            parameters["inputCubeDimension"] = dimension
            parameters["inputCubeData"] = data
        }
        let filter = CIFilter(name: FilterName.ColorCubeWithColorSpace.rawValue, withInputParameters: parameters)
        return filter?.outputImage
    }
}

/**
- returns: A closure of type `Filter`
*/

public func ColorInvert() -> Filter {
    return noParamsFilter(FilterName.ColorInvert.rawValue)
}

/**
- parameter inputGradientImage: A gradient image to serve as a mapping between colors in input and output images.
- returns: A closure of type `Filter`
*/

public func ColorMap(inputGradientImage:CIImage) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey :image,
            "inputGradientImage": inputGradientImage
        ]
        let filter = CIFilter(name:FilterName.ColorMap.rawValue, withInputParameters:parameters)
        return filter?.outputImage
    }
}

/**
- parameter options: An instance of `ColorMonochromeOptions`
- returns: A closure of type `Filter`
*/

public func ColorMonochrome(options: ColorMonochromeOptions) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey :image,
            kCIInputColorKey: options.inputColor,
            kCIInputIntensityKey: options.inputIntensity
        ]
        let filter = CIFilter(name:FilterName.ColorMonochrome.rawValue, withInputParameters:parameters)
        return filter?.outputImage
    }
}

/**
- parameter options: An instance of `ColorPolynomialOptions`
- returns: A closure of type `Filter`
*/

public func ColorPolynomial(options: ColorPolynomialOptions) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey :image,
            "inputRedCoefficients": options.inputRedCoefficients.vector(),
            "inputGreenCoefficients": options.inputGreenCoefficients.vector(),
            "inputBlueCoefficients": options.inputBlueCoefficients.vector(),
            "inputAlphaCoefficients": options.inputAlphaCoefficients.vector()
        ]
        let filter = CIFilter(name:FilterName.ColorPolynomial.rawValue, withInputParameters:parameters)
        return filter?.outputImage
    }
}

/**
Limit the number of tones in an image, making changes from one tone to another more pronounced. See [Wikipedia](https://en.wikipedia.org/wiki/Posterization)
- parameter inputLevels: How strong the effect should be
- returns: A closure of type `Filter`
*/

public func ColorPosterize(inputLevels:Double?) -> Filter {
    return { image in
        var parameters: Parameters = [
            kCIInputImageKey :image,
        ]
        if let levels = inputLevels {
            parameters["inputLevels"] = levels
        }
        let filter = CIFilter(name:FilterName.ColorPosterize.rawValue, withInputParameters:parameters)
        return filter?.outputImage
    }
}

/**
- parameter options: An instance of `FalseColorOptions`
- returns: A closure of type `Filter`
*/

public func FalseColor(options: FalseColorOptions) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey :image,
            "inputColor0": options.inputColor0,
            "inputColor1": options.inputColor1
        ]
        let filter = CIFilter(name:FilterName.FalseColor.rawValue, withInputParameters:parameters)
        return filter?.outputImage
    }
}

/** 
- returns: A closure of type `Filter`
*/
public func MaskToAlpha() -> Filter {
    return noParamsFilter(FilterName.MaskToAlpha.rawValue)
}
/**
- returns: A closure of type `Filter`
*/
public func MaximumComponent() -> Filter {
    return noParamsFilter(FilterName.MaximumComponent.rawValue)
}
/**
- returns: A closure of type `Filter`
*/
public func MinimumComponent() -> Filter {
    return noParamsFilter(FilterName.MinimumComponent.rawValue)
}
/**
- returns: A closure of type `Filter`
*/
public func PhotoEffectChrome() -> Filter {
    return noParamsFilter(FilterName.PhotoEffectChrome.rawValue)
}
/**
- returns: A closure of type `Filter`
*/
public func PhotoEffectFade() -> Filter {
    return noParamsFilter(FilterName.PhotoEffectFade.rawValue)
}
/**
- returns: A closure of type `Filter`
*/
public func PhotoEffectInstant() -> Filter {
    return noParamsFilter(FilterName.PhotoEffectInstant.rawValue)
}
/**
- returns: A closure of type `Filter`
*/
public func PhotoEffectMono() -> Filter {
    return noParamsFilter(FilterName.PhotoEffectMono.rawValue)
}
/**
- returns: A closure of type `Filter`
*/
public func PhotoEffectNoir() -> Filter {
    return noParamsFilter(FilterName.PhotoEffectNoir.rawValue)
}
/**
- returns: A closure of type `Filter`
*/
public func PhotoEffectProcess() -> Filter {
    return noParamsFilter(FilterName.PhotoEffectProcess.rawValue)
}
/**
- returns: A closure of type `Filter`
*/
public func PhotoEffectTonal() -> Filter {
    return noParamsFilter(FilterName.PhotoEffectTonal.rawValue)
}
/**
- returns: A closure of type `Filter`
*/
public func PhotoEffectTransfer() -> Filter {
    return noParamsFilter(FilterName.PhotoEffectTransfer.rawValue)
}
/**
- parameter inputIntensity:
- returns: A closure of type `Filter`
*/
public func SepiaTone(inputIntensity: Double?) -> Filter {
    return { image in
        var parameters: Parameters = [
            kCIInputImageKey: image
        ]
        if let intensity = inputIntensity {
            parameters["inputIntensity"] = intensity
        }
        let filter = CIFilter(name:FilterName.SepiaTone.rawValue, withInputParameters:parameters)
        return filter?.outputImage
    }
}

/**
- parameter options: An instance of `VignetteOptions`
- returns: A closure of type `Filter`
*/

public func Vignette(options: VignetteOptions) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey: image,
            kCIInputRadiusKey: options.inputRadius,
            kCIInputIntensityKey: options.inputIntensity
        ]
        let filter = CIFilter(name:FilterName.Vignette.rawValue, withInputParameters:parameters)
        return filter?.outputImage
    }
}

/**
- parameter options: An instance of `VignetteEffectOptions`
- returns: A closure of type `Filter`
*/

public func VignetteEffect(options: VignetteEffectOptions) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey: image,
            kCIInputCenterKey: options.inputCenter.vector(),
            kCIInputIntensityKey: options.inputIntensity,
            kCIInputRadiusKey: options.inputRadius,
            "inputFalloff": options.inputFalloff
        ]
        let filter = CIFilter(name:FilterName.VignetteEffect.rawValue, withInputParameters:parameters)
        return filter?.outputImage
    }
}