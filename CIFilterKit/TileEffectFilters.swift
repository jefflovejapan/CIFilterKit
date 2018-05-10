//
//  TileEffectFilters.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 6/3/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Foundation

/**
- parameter inputTransform: The `CGAffineTransform` to apply
- returns: A closure of type `Filter`
*/

public func AffineClamp(inputTransform: CGAffineTransform) -> Filter {
    return { image in
        let parameters: Parameters = [
            kCIInputImageKey: image,
            kCIInputTransformKey: inputTransform.value
        ]
        let aFilter = CIFilter(name: FilterName.AffineClamp.rawValue, withInputParameters: parameters)
        return aFilter?.outputImage
    }
}

/**
- parameter inputTransform: The `CGAffineTransform` to apply
- returns: A closure of type `Filter`
*/

public func AffineTile(inputTransform: CGAffineTransform) -> Filter {
    return { image in
        let parameters: Parameters = [
            kCIInputImageKey: image,
            kCIInputTransformKey: inputTransform.value
        ]
        let aFilter = CIFilter(name: FilterName.AffineTile.rawValue, withInputParameters: parameters)
        return aFilter?.outputImage
    }
}

/**
- parameter options: An instance of `TileOptions`
- returns: A closure of type `Filter`
*/

public func EightfoldReflectedTile(options: TileOptions) -> Filter {
    return { image in
        let parameters: Parameters = [
            kCIInputImageKey: image,
            kCIInputCenterKey: options.inputCenter.vector(),
            kCIInputAngleKey: options.inputAngle,
            kCIInputWidthKey: options.inputWidth
        ]
        let aFilter = CIFilter(name: FilterName.EightfoldReflectedTile.rawValue, withInputParameters: parameters)
        return aFilter?.outputImage
    }
}

/**
- parameter options: An instance of `TileOptionsWithAcuteAngle`
- returns: A closure of type `Filter`
*/

public func FourfoldReflectedTile(options: TileOptionsWithAcuteAngle) -> Filter {
    return { image in
        let parameters: Parameters = [
            kCIInputImageKey: image,
            kCIInputCenterKey: options.inputCenter.vector(),
            kCIInputAngleKey: options.inputAngle,
            "inputAcuteAngle": options.inputAcuteAngle,
            kCIInputWidthKey: options.inputWidth
        ]
        let aFilter = CIFilter(name: FilterName.FourfoldReflectedTile.rawValue, withInputParameters: parameters)
        return aFilter?.outputImage
    }
}

/**
- parameter options: An instance of `TileOptions`
- returns: A closure of type `Filter`
*/

public func FourfoldRotatedTile(options: TileOptions) -> Filter {
    return { image in
        let parameters: Parameters = [
            kCIInputImageKey: image,
            kCIInputCenterKey: options.inputCenter.vector(),
            kCIInputAngleKey: options.inputAngle,
            kCIInputWidthKey: options.inputWidth
        ]
        let aFilter = CIFilter(name: FilterName.FourfoldRotatedTile.rawValue, withInputParameters: parameters)
        return aFilter?.outputImage
    }
}

/**
- parameter options: An instance of `TileOptionsWithAcuteAngle`
- returns: A closure of type `Filter`
*/

public func FourfoldTranslatedTile(options: TileOptionsWithAcuteAngle) -> Filter {
    return { image in
        let parameters: Parameters = [
            kCIInputImageKey: image,
            kCIInputCenterKey: options.inputCenter.vector(),
            kCIInputAngleKey: options.inputAngle,
            "inputAcuteAngle": options.inputAcuteAngle,
            kCIInputWidthKey: options.inputWidth
        ]
        let aFilter = CIFilter(name: FilterName.FourfoldTranslatedTile.rawValue, withInputParameters: parameters)
        return aFilter?.outputImage
    }
}

/**
- parameter options: An instance of `TileOptions`
- returns: A closure of type `Filter`
*/

public func GlideReflectedTile(options: TileOptions) -> Filter {
    return { image in
        let parameters: Parameters = [
            kCIInputImageKey: image,
            kCIInputCenterKey: options.inputCenter.vector(),
            kCIInputAngleKey: options.inputAngle,
            kCIInputWidthKey: options.inputWidth
        ]
        let aFilter = CIFilter(name: FilterName.GlideReflectedTile.rawValue, withInputParameters: parameters)
        return aFilter?.outputImage
    }
}

/**
- parameter options: An instance of `TileOptions`
- returns: A closure of type `Filter`
*/

public func SixfoldReflectedTile(options: TileOptions) -> Filter {
    return { image in
        let parameters: Parameters = [
            kCIInputImageKey: image,
            kCIInputCenterKey: options.inputCenter.vector(),
            kCIInputAngleKey: options.inputAngle,
            kCIInputWidthKey: options.inputWidth
        ]
        let aFilter = CIFilter(name: FilterName.SixfoldReflectedTile.rawValue, withInputParameters: parameters)
        return aFilter?.outputImage
    }
}

/**
- parameter options: An instance of `TileOptions`
- returns: A closure of type `Filter`
*/
public func SixfoldRotatedTile(options: TileOptions) -> Filter {
    return { image in
        let parameters: Parameters = [
            kCIInputImageKey: image,
            kCIInputCenterKey: options.inputCenter.vector(),
            kCIInputAngleKey: options.inputAngle,
            kCIInputWidthKey: options.inputWidth
        ]
        let aFilter = CIFilter(name: FilterName.SixfoldRotatedTile.rawValue, withInputParameters: parameters)
        return aFilter?.outputImage
    }
}

/**
- parameter options: An instance of `TriangleKaleidoscopeOptions`
- returns: A closure of type `Filter`
*/

public func TriangleKaleidoscope(options: TriangleKaleidoscopeOptions) -> Filter {
    return { image in
        let parameters: Parameters = [
            kCIInputImageKey: image,
            "inputSize": options.inputSize,
            "inputRotation": options.inputRotation,
            "inputDecay": options.inputDecay
        ]
        let aFilter = CIFilter(name: FilterName.TriangleKaleidoscope.rawValue, withInputParameters: parameters)
        return aFilter?.outputImage
    }
}

/**
- parameter options: An instance of `TileOptions`
- returns: A closure of type `Filter`
*/

public func TwelvefoldReflectedTile(options: TileOptions) -> Filter {
    return { image in
        let parameters: Parameters = [
            kCIInputImageKey: image,
            kCIInputCenterKey: options.inputCenter.vector(),
            kCIInputAngleKey: options.inputAngle,
            kCIInputWidthKey: options.inputWidth
        ]
        let aFilter = CIFilter(name: FilterName.TwelvefoldReflectedTile.rawValue, withInputParameters: parameters)
        return aFilter?.outputImage
    }
}
