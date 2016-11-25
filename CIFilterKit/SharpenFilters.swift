//
//  SharpenFilters.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 6/2/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Foundation

/**
- parameter inputSharpness: The amount of sharpening to apply
- returns: A closure of type `Filter`
*/

public func SharpenLuminance(_ inputSharpness:Double?) -> Filter {
    return { image in
        var parameters: Parameters = [
            kCIInputImageKey: image
        ]
        if let sharpness = inputSharpness {
            parameters[kCIInputSharpnessKey] = sharpness as AnyObject?
        }
        let filter = CIFilter(name: FilterName.SharpenLuminance.rawValue, withInputParameters: parameters)
        return filter?.outputImage
    }
}

/**
- parameter options: An instance of `UnsharpMaskOptions`
- returns: A closure of type `Filter`
*/

public func UnsharpMask(_ options: UnsharpMaskOptions) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey: image,
            kCIInputRadiusKey: options.inputRadius,
            kCIInputIntensityKey: options.inputIntensity
        ] as [String : Any]
        let filter = CIFilter(name: FilterName.UnsharpMask.rawValue, withInputParameters: parameters)
        return filter?.outputImage
    }
}
