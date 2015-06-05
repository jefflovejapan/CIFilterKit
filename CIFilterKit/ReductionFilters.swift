//
//  ReductionFilters.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 6/2/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Foundation

public func AreaHistogram(#inputExtent:CGRect?, #inputCount: Int?, #inputScale: Double?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            kCIInputExtentKey: inputExtent?.vector(),
            "inputCount": inputCount,
            kCIInputScaleKey: inputScale
            ])
        let filter = CIFilter(name:"CIAreaHistogram", withInputParameters: parameters)
        return filter.outputImage
    }
}
public func HistogramDisplayFilter(#inputHeight: Double?, #inputHighLimit: Double?, #inputLowLimit: Double?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            "inputHeight": inputHeight,
            "inputHighLimit": inputHighLimit,
            "inputLowLimit": inputLowLimit
            ])
        let filter = CIFilter(name:"CIHistogramDisplayFilter", withInputParameters: parameters)
        return filter.outputImage
    }
}