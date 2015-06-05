//
//  BlurFilters.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 5/16/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Foundation

//TODO: Think about default parameters like image radius in GaussianBlur

public func GaussianBlur(#inputRadius: Float?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputRadiusKey: inputRadius,
            kCIInputImageKey: image
        ])
        let filter = CIFilter(name: "CIGaussianBlur", withInputParameters: parameters)
        return filter.outputImage
    }
}

public func MotionBlur(#inputRadius: Float?, #inputAngle: Float?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            kCIInputRadiusKey: inputRadius,
            kCIInputAngleKey: inputAngle
        ])
        let filter = CIFilter(name: "CIMotionBlur", withInputParameters: parameters)
        return filter.outputImage
    }
}

//TODO: Figure out why ZoomBlur isn't KVC-compliant for inputAmount https://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIZoomBlur

public func ZoomBlur(#inputCenter: XYPosition?, #inputRadius: Float?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            kCIInputCenterKey: inputCenter?.vector(),
            "inputRadius": inputRadius
        ])
        let filter = CIFilter(name: "CIZoomBlur", withInputParameters: parameters)
        return filter.outputImage
    }
}


