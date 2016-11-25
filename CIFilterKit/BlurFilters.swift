//
//  BlurFilters.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 5/16/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Foundation

/**
    - parameter inputRadius: The size of the blur to be applied. Default value is 10.0.
    - returns: A closure of type `Filter`
*/

public func GaussianBlur(_ inputRadius: Double?) -> Filter {
    return { image in
        var parameters: Parameters = [
            kCIInputImageKey: image
            ]
        if let radius = inputRadius {
            parameters[kCIInputRadiusKey] = radius as AnyObject?
        }
        let filter = CIFilter(name: FilterName.GaussianBlur.rawValue, withInputParameters: parameters)
        return filter?.outputImage
    }
}

/**
    - parameter options: An instance of `MotionBlurOptions`
    - returns: A closure of type `Filter`
*/

public func MotionBlur(_ options: MotionBlurOptions) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey: image,
            kCIInputRadiusKey: options.inputRadius,
            kCIInputAngleKey: options.inputAngle
        ] as [String : Any]
        let filter = CIFilter(name: FilterName.MotionBlur.rawValue, withInputParameters: parameters)
        return filter?.outputImage
    }
}

/**
    - parameter options: An instance of `ZoomBlurOptions`
    - returns: A closure of type `Filter`
*/

public func ZoomBlur(_ options: ZoomBlurOptions) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey: image,
            kCIInputCenterKey: options.inputCenter.vector(),
            kCIInputRadiusKey: options.inputRadius,
        ] as [String : Any]
        let filter = CIFilter(name: FilterName.ZoomBlur.rawValue, withInputParameters: parameters)
        return filter?.outputImage
    }
}

