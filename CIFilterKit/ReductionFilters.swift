//
//  ReductionFilters.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 6/2/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Foundation

/**
:param: options An instance of `AreaHistogramOptions`
:returns: A closure of type `Filter`
*/

public func AreaHistogram(options: AreaHistogramOptions) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey: image,
            kCIInputExtentKey: options.inputExtent.vector(),
            "inputCount": options.inputCount,
            kCIInputScaleKey: options.inputScale
        ]
        let filter = CIFilter(name:FilterName.AreaHistogram.rawValue, withInputParameters: parameters)
        return filter.outputImage
    }
}

/**
:param: options An instance of `HistogramDisplayOptions`
:returns: A closure of type `Filter`
*/

public func HistogramDisplayFilter(options: HistogramDisplayOptions) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey: image,
            "inputHeight": options.inputHeight,
            "inputHighLimit": options.inputHighLimit,
            "inputLowLimit": options.inputLowLimit
        ]
        let filter = CIFilter(name:FilterName.HistogramDisplayFilter.rawValue, withInputParameters: parameters)
        return filter.outputImage
    }
}