//
//  BlurFilters.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 5/16/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Foundation

public func GaussianBlur(inputRadius: Double?) -> Filter {
    return { image in
        var parameters: Parameters = [
            kCIInputImageKey: image
            ]
        if let radius = inputRadius {
            parameters[kCIInputRadiusKey] = radius
        }
        let filter = CIFilter(name: FilterName.GaussianBlur.rawValue, withInputParameters: parameters)
        return filter.outputImage
    }
}

public func MotionBlur(options: MotionBlurOptions) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey: image,
            kCIInputRadiusKey: options.inputRadius,
            kCIInputAngleKey: options.inputAngle
        ]
        let filter = CIFilter(name: FilterName.MotionBlur.rawValue, withInputParameters: parameters)
        return filter.outputImage
    }
}

//TODO: Figure out why ZoomBlur isn't KVC-compliant for inputAmount https://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIZoomBlur

public func ZoomBlur(options: ZoomBlurOptions) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey: image,
            kCIInputCenterKey: options.inputCenter.vector(),
            kCIInputRadiusKey: options.inputRadius,
        ]
        let filter = CIFilter(name: FilterName.ZoomBlur.rawValue, withInputParameters: parameters)
        return filter.outputImage
    }
}

