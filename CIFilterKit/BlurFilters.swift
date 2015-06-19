//
//  BlurFilters.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 5/16/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Foundation

/**
    :param: inputRadius The size of the blur to be applied. Default value is 10.0.
    :returns: A closure of type `Filter`
*/

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

/**
    :param: options An instance of `MotionBlurOptions`
    :returns: A closure of type `Filter`
*/

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

/**
    :param: options An instance of `ZoomBlurOptions`
    :returns: A closure of type `Filter`
*/

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

