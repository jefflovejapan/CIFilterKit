//
//  HalftoneEffectFilters.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 5/28/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Foundation

/**
:param: options An instance of `CircularScreenOptions`
:returns: A closure of type `Filter`
*/

public func CircularScreen(options: CircularScreenOptions) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey: image,
            kCIInputCenterKey: options.inputCenter.vector(),
            kCIInputWidthKey: options.inputWidth,
            kCIInputSharpnessKey: options.inputSharpness
        ]
        let filter = CIFilter(name: FilterName.CircularScreen.rawValue, withInputParameters: parameters)
        return filter.outputImage
    }
}

/**
:param: options An instance of `DotScreenOptions`
:returns: A closure of type `Filter`
*/

public func DotScreen(options: DotScreenOptions) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey: image,
            kCIInputCenterKey: options.inputCenter.vector(),
            kCIInputAngleKey: options.inputAngle,
            kCIInputWidthKey: options.inputWidth,
            kCIInputSharpnessKey: options.inputSharpness
        ]
        let filter = CIFilter(name: FilterName.DotScreen.rawValue, withInputParameters: parameters)
        return filter.outputImage
    }
}

/**
:param: options An instance of `HatchedScreenOptions`
:returns: A closure of type `Filter`
*/

public func HatchedScreen(options: HatchedScreenOptions) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey: image,
            kCIInputCenterKey: options.inputCenter.vector(),
            kCIInputAngleKey: options.inputAngle,
            kCIInputWidthKey: options.inputWidth,
            kCIInputSharpnessKey: options.inputSharpness
        ]
        let filter = CIFilter(name: FilterName.HatchedScreen.rawValue, withInputParameters: parameters)
        return filter.outputImage
    }
}

/**
:param: options An instance of `LineScreenOptions`
:returns: A closure of type `Filter`
*/

public func LineScreen(options: LineScreenOptions) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey: image,
            kCIInputCenterKey: options.inputCenter.vector(),
            kCIInputAngleKey: options.inputAngle,
            kCIInputWidthKey: options.inputWidth,
            kCIInputSharpnessKey: options.inputSharpness
        ]
        let filter = CIFilter(name: FilterName.LineScreen.rawValue, withInputParameters: parameters)
        return filter.outputImage
    }
}