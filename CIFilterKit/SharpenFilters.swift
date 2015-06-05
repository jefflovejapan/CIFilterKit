//
//  SharpenFilters.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 6/2/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Foundation

public func SharpenLuminance(#inputSharpness:Double?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            kCIInputSharpnessKey: inputSharpness
            ])
        let filter = CIFilter(name: "CISharpenLuminance", withInputParameters: parameters)
        return filter.outputImage
    }
}
public func UnsharpMask(#inputRadius: Double?, #inputIntensity: Double?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            kCIInputRadiusKey: inputRadius,
            kCIInputIntensityKey: inputIntensity
            ])
        let filter = CIFilter(name: "CIUnsharpMask", withInputParameters: parameters)
        return filter.outputImage
    }
}