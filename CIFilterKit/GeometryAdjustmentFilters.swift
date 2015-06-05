//
//  GeometryAdjustmentFilters.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 6/1/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Foundation

public func AffineTransform(#inputTransform:CGAffineTransform?) -> Filter {
    return { image in
        let parameters = unwrapParams([kCIInputImageKey: image, kCIInputTransformKey: inputTransform?.value()])
        let aFilter = CIFilter(name:"CIAffineTransform", withInputParameters:parameters)
        return aFilter.outputImage
    }
}
public func Crop(#inputRectangle:CGRect?) -> Filter {
    return { image in
        let parameters = unwrapParams([kCIInputImageKey: image, "inputRectangle": inputRectangle?.vector()])
        let aFilter = CIFilter(name:"CICrop", withInputParameters:parameters)
        return aFilter.outputImage
    }
}
public func LanczosScaleTransform(#inputScale:Double?, #inputAspectRatio:Double?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            kCIInputScaleKey: inputScale,
            kCIInputAspectRatioKey: inputAspectRatio
            ])
        let aFilter = CIFilter(name:"CILanczosScaleTransform", withInputParameters:parameters)
        return aFilter.outputImage
    }
}
public func PerspectiveCorrection(#inputTopLeft: XYPosition?, #inputTopRight: XYPosition?, #inputBottomLeft: XYPosition?, #inputBottomRight:XYPosition?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            "inputTopLeft": inputTopLeft?.vector(),
            "inputTopRight": inputTopRight?.vector(),
            "inputBottomLeft": inputBottomLeft?.vector(),
            "inputBottomRight": inputBottomRight?.vector()
            ])
        let aFilter = CIFilter(name:"CIPerspectiveCorrection", withInputParameters:parameters)
        return aFilter.outputImage
    }
}
public func PerspectiveTile(#inputTopLeft: XYPosition?, #inputTopRight: XYPosition?, #inputBottomLeft: XYPosition?, #inputBottomRight:XYPosition?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            "inputTopLeft": inputTopLeft?.vector(),
            "inputTopRight": inputTopRight?.vector(),
            "inputBottomLeft": inputBottomLeft?.vector(),
            "inputBottomRight": inputBottomRight?.vector()
            ])
        let aFilter = CIFilter(name:"CIPerspectiveTile", withInputParameters:parameters)
        return aFilter.outputImage
    }
}
public func PerspectiveTransform(#inputTopLeft: XYPosition?, #inputTopRight: XYPosition?, #inputBottomLeft: XYPosition?, #inputBottomRight:XYPosition?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            "inputTopLeft": inputTopLeft?.vector(),
            "inputTopRight": inputTopRight?.vector(),
            "inputBottomLeft": inputBottomLeft?.vector(),
            "inputBottomRight": inputBottomRight?.vector(),
            ])
        let aFilter = CIFilter(name:"CIPerspectiveTransform", withInputParameters:parameters)
        return aFilter.outputImage
    }
}
public func PerspectiveTransformWithExtent(#inputExtent:CGRect?, #inputTopLeft: XYPosition?, #inputTopRight: XYPosition?, #inputBottomLeft: XYPosition?, #inputBottomRight:XYPosition?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            kCIInputExtentKey: inputExtent?.vector(),
            "inputTopLeft": inputTopLeft?.vector(),
            "inputTopRight": inputTopRight?.vector(),
            "inputBottomLeft": inputBottomLeft?.vector(),
            "inputBottomRight": inputBottomRight?.vector()
            ])
        let aFilter = CIFilter(name:"CIPerspectiveTransformWithExtent", withInputParameters:parameters)
        return aFilter.outputImage
    }
}
public func StraightenFilter(#inputAngle:Double?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            kCIInputAngleKey: inputAngle
            ])
        let aFilter = CIFilter(name:"CIStraightenFilter", withInputParameters:parameters)
        return aFilter.outputImage
    }
}