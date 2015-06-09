//
//  Gradients.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 5/28/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Foundation

public func GaussianGradient(options: GaussianGradientOptions) -> CIImage {
    let parameters: Parameters = [
        kCIInputCenterKey: options.inputCenter.vector(),
        "inputColor0": options.inputColor0,
        "inputColor1": options.inputColor1,
        kCIInputRadiusKey: options.inputRadius
    ]
    let filter = CIFilter(name:FilterName.GaussianGradient.rawValue, withInputParameters:parameters)
    return filter.outputImage
}

public func LinearGradient(options: LinearGradientOptions) -> CIImage! {
    let parameters: Parameters = [
        "inputPoint0": options.inputPoint0.vector(),
        "inputPoint1": options.inputPoint1.vector(),
        "inputColor0": options.inputColor0,
        "inputColor1": options.inputColor1
    ]
    let filter = CIFilter(name:FilterName.LinearGradient.rawValue, withInputParameters:parameters)
    return filter.outputImage
}

public func RadialGradient(options: RadialGradientOptions) -> CIImage! {
    let parameters = [
        kCIInputCenterKey: options.inputCenter.vector(),
        "inputRadius0": options.inputRadius0,
        "inputRadius1": options.inputRadius1,
        "inputColor0": options.inputColor0,
        "inputColor1": options.inputColor1
    ]
    let aFilter = CIFilter(name:FilterName.RadialGradient.rawValue, withInputParameters: parameters)
    return aFilter.outputImage
}

public func SmoothLinearGradient(options: SmoothLinearGradientOptions) -> CIImage {
    let parameters = [
        "inputPoint0": options.inputPoint0.vector(),
        "inputPoint1": options.inputPoint1.vector(),
        "inputColor0": options.inputColor0,
        "inputColor1": options.inputColor1
    ]
    let aFilter = CIFilter(name: FilterName.SmoothLinearGradient.rawValue, withInputParameters: parameters)
    return aFilter.outputImage
}