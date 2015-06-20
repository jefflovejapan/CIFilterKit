//
//  DistortionEffectFilters.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 5/27/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Foundation

/**
:param: options An instance of `BumpDistortionOptions`
:returns: A closure of type `Filter`
*/

public func BumpDistortion(options: BumpDistortionOptions) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey: image,
            kCIInputCenterKey: options.inputCenter.vector(),
            kCIInputRadiusKey: options.inputRadius,
            kCIInputScaleKey: options.inputScale
        ]
        let filter = CIFilter(name:FilterName.BumpDistortion.rawValue, withInputParameters:parameters)
        return filter.outputImage
    }
}

/**
:param: options An instance of `BumpDistortionLinearOptions`
:returns: A closure of type `Filter`
*/

public func BumpDistortionLinear(options: BumpDistortionLinearOptions) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey:image,
            kCIInputCenterKey: options.inputCenter.vector(),
            kCIInputRadiusKey: options.inputRadius,
            kCIInputAngleKey: options.inputAngle,
            kCIInputScaleKey: options.inputScale
        ]
        let filter = CIFilter(name:FilterName.BumpDistortionLinear.rawValue, withInputParameters:parameters)
        return filter.outputImage
    }
}

/**
:param: options An instance of `CircleSplashDistortionOptions`
:returns: A closure of type `Filter`
*/

public func CircleSplashDistortion(options: CircleSplashDistortionOptions) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey:image,
            kCIInputCenterKey:options.inputCenter.vector(),
            kCIInputRadiusKey: options.inputRadius
        ]
        let filter = CIFilter(name:FilterName.CircleSplashDistortion.rawValue, withInputParameters:parameters)
        return filter.outputImage
    }
}

/**
:param: options An instance of `GlassDistortionOptions`
:returns: A closure of type `Filter`
*/

public func GlassDistortion(inputTexture:CIImage, #options: GlassDistortionOptions) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey:image,
            "inputTexture": inputTexture,
            kCIInputCenterKey: options.inputCenter.vector(),
            kCIInputScaleKey: options.inputScale
        ]
        let filter = CIFilter(name:FilterName.GlassDistortion.rawValue, withInputParameters:parameters)
        return filter.outputImage
    }
}

/**
:param: options An instance of `HoleDistortionOptions`
:returns: A closure of type `Filter`
*/

public func HoleDistortion(options: HoleDistortionOptions) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey:image,
            kCIInputCenterKey:options.inputCenter.vector(),
            kCIInputRadiusKey:options.inputRadius
        ]
        let filter = CIFilter(name:FilterName.HoleDistortion.rawValue, withInputParameters:parameters)
        return filter.outputImage
    }
}

/**
:param: options An instance of `LightTunnelOptions`
:returns: A closure of type `Filter`
*/

public func LightTunnel(options: LightTunnelOptions) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey:image,
            kCIInputCenterKey:options.inputCenter.vector(),
            "inputRotation":options.inputRotation,
            kCIInputRadiusKey:options.inputRadius
        ]
        let filter = CIFilter(name:FilterName.LightTunnel.rawValue, withInputParameters:parameters)
        return filter.outputImage
    }
}

/**
:param: options An instance of `PinchDistortionOptions`
:returns: A closure of type `Filter`
*/

public func PinchDistortion(options: PinchDistortionOptions) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey:image,
            kCIInputCenterKey: options.inputCenter.vector(),
            kCIInputRadiusKey: options.inputRadius,
            kCIInputScaleKey: options.inputScale
        ]
        let filter = CIFilter(name:FilterName.PinchDistortion.rawValue, withInputParameters:parameters)
        return filter.outputImage
    }
}

/**
:param: options An instance of `TwirlDistortionOptions`
:returns: A closure of type `Filter`
*/

public func TwirlDistortion(options: TwirlDistortionOptions) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey:image,
            kCIInputCenterKey: options.inputCenter.vector(),
            kCIInputRadiusKey: options.inputRadius,
            kCIInputAngleKey: options.inputAngle
        ]
        let filter = CIFilter(name:FilterName.TwirlDistortion.rawValue, withInputParameters:parameters)
        return filter.outputImage
    }
}

/**
:param: options An instance of `VortexDistortionOptions`
:returns: A closure of type `Filter`
*/

public func VortexDistortion(options: VortexDistortionOptions) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey:image,
            kCIInputCenterKey: options.inputCenter.vector(),
            kCIInputRadiusKey: options.inputRadius,
            kCIInputAngleKey: options.inputAngle
        ]
        let filter = CIFilter(name:FilterName.VortexDistortion.rawValue, withInputParameters:parameters)
        return filter.outputImage
    }
}