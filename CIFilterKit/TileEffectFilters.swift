//
//  TileEffectFilters.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 6/3/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Foundation

public func AffineClamp(#inputTransform: CGAffineTransform?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            kCIInputTransformKey: inputTransform?.value()
            ])
        let aFilter = CIFilter(name: "CIAffineClamp", withInputParameters: parameters)
        return aFilter.outputImage
    }
}
public func AffineTile(#inputTransform: CGAffineTransform?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            kCIInputTransformKey: inputTransform?.value()
            ])
        let aFilter = CIFilter(name: "CIAffineTile", withInputParameters: parameters)
        return aFilter.outputImage
    }
}
public func EightfoldReflectedTile(#inputCenter: XYPosition?, #inputAngle: Double?, #inputWidth: Double?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            kCIInputCenterKey: inputCenter?.vector(),
            kCIInputAngleKey: inputAngle,
            kCIInputWidthKey: inputWidth
            ])
        let aFilter = CIFilter(name: "CIEightfoldReflectedTile", withInputParameters: parameters)
        return aFilter.outputImage
    }
}
public func FourfoldReflectedTile(#inputCenter: XYPosition?, #inputAngle: Double?, #inputAcuteAngle: Double?, #inputWidth: Double?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            kCIInputCenterKey: inputCenter?.vector(),
            kCIInputAngleKey: inputAngle,
            "inputAcuteAngle": inputAcuteAngle,
            kCIInputWidthKey: inputWidth
            ])
        let aFilter = CIFilter(name: "CIFourfoldReflectedTile", withInputParameters: parameters)
        return aFilter.outputImage
    }
}
public func FourfoldRotatedTile(#inputCenter: XYPosition?, #inputAngle: Double?, #inputWidth: Double?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            kCIInputCenterKey: inputCenter?.vector(),
            kCIInputAngleKey: inputAngle,
            kCIInputWidthKey: inputWidth
            ])
        let aFilter = CIFilter(name: "CIFourfoldRotatedTile", withInputParameters: parameters)
        return aFilter.outputImage
    }
}
public func FourfoldTranslatedTile(#inputCenter: XYPosition?, #inputAngle: Double?, #inputAcuteAngle: Double?, #inputWidth: Double?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            kCIInputCenterKey: inputCenter?.vector(),
            kCIInputAngleKey: inputAngle,
            "inputAcuteAngle": inputAcuteAngle,
            kCIInputWidthKey: inputWidth
            ])
        let aFilter = CIFilter(name: "CIFourfoldTranslatedTile", withInputParameters: parameters)
        return aFilter.outputImage
    }
}
public func GlideReflectedTile(#inputCenter: XYPosition?, #inputAngle: Double?, #inputWidth: Double?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            kCIInputCenterKey: inputCenter?.vector(),
            kCIInputAngleKey: inputAngle,
            kCIInputWidthKey: inputWidth
            ])
        let aFilter = CIFilter(name: "CIGlideReflectedTile", withInputParameters: parameters)
        return aFilter.outputImage
    }
}
public func SixfoldReflectedTile(#inputCenter: XYPosition?, #inputAngle: Double?, #inputWidth: Double?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            kCIInputCenterKey: inputCenter?.vector(),
            kCIInputAngleKey: inputAngle,
            kCIInputWidthKey: inputWidth
            ])
        let aFilter = CIFilter(name: "CISixfoldReflectedTile", withInputParameters: parameters)
        return aFilter.outputImage
    }
}
public func SixfoldRotatedTile(#inputCenter: XYPosition?, #inputAngle: Double?, #inputWidth: Double?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            kCIInputCenterKey: inputCenter?.vector(),
            kCIInputAngleKey: inputAngle,
            kCIInputWidthKey: inputWidth
            ])
        let aFilter = CIFilter(name: "CISixfoldRotatedTile", withInputParameters: parameters)
        return aFilter.outputImage
    }
}
public func TriangleKaleidoscope(#inputPoint: XYPosition?, #inputSize: Double?, #inputRotation: Double?, #inputDecay: Double?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            "inputSize": inputSize,
            "inputRotation": inputRotation,
            "inputDecay": inputDecay
            ])
        let aFilter = CIFilter(name: "CITriangleKaleidoscope", withInputParameters: parameters)
        return aFilter.outputImage
    }
}
public func TwelvefoldReflectedTile(#inputCenter: XYPosition?, #inputAngle: Double?, #inputWidth: Double?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            kCIInputCenterKey: inputCenter?.vector(),
            kCIInputAngleKey: inputAngle,
            kCIInputWidthKey: inputWidth
            ])
        let aFilter = CIFilter(name: "CITwelvefoldReflectedTile", withInputParameters: parameters)
        return aFilter.outputImage
    }
}