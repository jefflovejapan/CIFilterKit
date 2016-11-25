//
//  ReductionFilters.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 6/2/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Foundation

/**
- parameter options: An instance of `AreaHistogramOptions`
- returns: A closure of type `Filter`
*/

public func AreaHistogram(_ options: AreaHistogramOptions) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey: image,
            kCIInputExtentKey: options.inputExtent.vector(),
            "inputCount": options.inputCount,
            kCIInputScaleKey: options.inputScale
        ] as [String : Any]
        let filter = CIFilter(name:FilterName.AreaHistogram.rawValue, withInputParameters: parameters)
        return filter?.outputImage
    }
}

/**
- parameter options: An instance of `HistogramDisplayOptions`
- returns: A closure of type `Filter`
*/

public func HistogramDisplayFilter(_ options: HistogramDisplayOptions) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey: image,
            "inputHeight": options.inputHeight,
            "inputHighLimit": options.inputHighLimit,
            "inputLowLimit": options.inputLowLimit
        ] as [String : Any]
        let filter = CIFilter(name:FilterName.HistogramDisplayFilter.rawValue, withInputParameters: parameters)
        return filter?.outputImage
    }
}
