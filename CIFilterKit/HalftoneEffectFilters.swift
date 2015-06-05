//
//  HalftoneEffectFilters.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 5/28/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Foundation

public func CircularScreen(#inputCenter: XYPosition?, #inputWidth: Double?, #inputSharpness: Double?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            kCIInputCenterKey: inputCenter?.vector(),
            kCIInputWidthKey: inputWidth,
            kCIInputSharpnessKey: inputSharpness
            ])
        let filter = CIFilter(name: "CICircularScreen", withInputParameters: parameters)
        return filter.outputImage
    }
}
public func DotScreen(#inputCenter:XYPosition?, #inputAngle:Double?, #inputWidth:Double?, #inputSharpness:Double?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            kCIInputCenterKey: inputCenter?.vector(),
            kCIInputAngleKey: inputAngle,
            kCIInputWidthKey: inputWidth,
            kCIInputSharpnessKey: inputSharpness
            ])
        let filter = CIFilter(name: "CIDotScreen", withInputParameters: parameters)
        return filter.outputImage
    }
}
public func HatchedScreen(#inputCenter:XYPosition?, #inputAngle:Double?, #inputWidth:Double?, #inputSharpness:Double?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            kCIInputCenterKey: inputCenter?.vector(),
            kCIInputAngleKey: inputAngle,
            kCIInputWidthKey: inputWidth,
            kCIInputSharpnessKey: inputSharpness
            ])
        let filter = CIFilter(name: "CIHatchedScreen", withInputParameters: parameters)
        return filter.outputImage
    }
}
public func LineScreen(#inputCenter:XYPosition?, #inputAngle:Double?, #inputWidth:Double?, #inputSharpness:Double?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            kCIInputCenterKey: inputCenter?.vector(),
            kCIInputAngleKey: inputAngle,
            kCIInputWidthKey: inputWidth,
            kCIInputSharpnessKey: inputSharpness
            ])
        let filter = CIFilter(name: "CILineScreen", withInputParameters: parameters)
        return filter.outputImage
    }
}