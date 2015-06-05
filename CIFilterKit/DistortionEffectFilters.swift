//
//  DistortionEffectFilters.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 5/27/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Foundation

public func BumpDistortion(#inputCenter:XYPosition?, #inputRadius:Double?, #inputScale: Double?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            kCIInputCenterKey: inputCenter?.vector(),
            kCIInputRadiusKey: inputRadius,
            kCIInputScaleKey: inputScale
            ])
        let filter = CIFilter(name:"CIBumpDistortion", withInputParameters:parameters)
        return filter.outputImage
    }
}
public func BumpDistortionLinear(#inputCenter:XYPosition?, #inputRadius:Double?, #inputAngle: Double?, #inputScale: Double?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey:image,
            kCIInputCenterKey: inputCenter?.vector(),
            kCIInputRadiusKey: inputRadius,
            kCIInputAngleKey: inputAngle,
            kCIInputScaleKey: inputScale
            ])
        let filter = CIFilter(name:"CIBumpDistortionLinear", withInputParameters:parameters)
        return filter.outputImage
    }
}
public func CircleSplashDistortion(#inputCenter:XYPosition?, #inputRadius: Double?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey:image,
            kCIInputCenterKey:inputCenter?.vector(),
            kCIInputRadiusKey: inputRadius
            ])
        let filter = CIFilter(name:"CICircleSplashDistortion", withInputParameters:parameters)
        return filter.outputImage
    }
}
public func GlassDistortion(#inputTexture:CIImage?, #inputCenter: XYPosition?, #inputScale: Double?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey:image,
            "inputTexture": inputTexture,
            kCIInputCenterKey: inputCenter?.vector(),
            kCIInputScaleKey: inputScale
            ])
        let filter = CIFilter(name:"CIGlassDistortion", withInputParameters:parameters)
        return filter.outputImage
    }
}
public func HoleDistortion(#inputCenter:XYPosition?, #inputRadius:Double?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey:image,
            kCIInputCenterKey:inputCenter?.vector(),
            kCIInputRadiusKey:inputRadius
            ])
        let filter = CIFilter(name:"CIHoleDistortion", withInputParameters:parameters)
        return filter.outputImage
    }
}
public func LightTunnel(#inputCenter:XYPosition?, #inputRotation:Double?, #inputRadius:Double?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey:image,
            kCIInputCenterKey:inputCenter?.vector(),
            "inputRotation": inputRotation,
            kCIInputRadiusKey: inputRadius
            ])
        let filter = CIFilter(name:"CILightTunnel", withInputParameters:parameters)
        return filter.outputImage
    }
}
public func PinchDistortion(#inputCenter:XYPosition?, #inputRadius: Double?, #inputScale: Double?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey:image,
            kCIInputCenterKey: inputCenter?.vector(),
            kCIInputRadiusKey: inputRadius,
            kCIInputScaleKey: inputScale
            ])
        let filter = CIFilter(name:"CIPinchDistortion", withInputParameters:parameters)
        return filter.outputImage
    }
}
public func TwirlDistortion(#inputCenter:XYPosition?, #inputRadius: Double?, #inputAngle: Double?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey:image,
            kCIInputCenterKey: inputCenter?.vector(),
            kCIInputRadiusKey: inputRadius,
            kCIInputAngleKey: inputAngle
            ])
        let filter = CIFilter(name:"CITwirlDistortion", withInputParameters:parameters)
        return filter.outputImage
    }
}
public func VortexDistortion(#inputCenter:XYPosition?, #inputRadius: Double?, #inputAngle: Double?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey:image,
            kCIInputCenterKey: inputCenter?.vector(),
            kCIInputRadiusKey: inputRadius,
            kCIInputAngleKey: inputAngle
            ])
        let filter = CIFilter(name:"CIVortexDistortion", withInputParameters:parameters)
        return filter.outputImage
    }
}