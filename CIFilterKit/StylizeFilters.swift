//
//  StylizeFilters.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 6/2/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Foundation

/**
    - parameter inputBackgroundImage: The bottom image in the composition
    - parameter inputMask: The image to apply as a mask
    - returns: A closure of type `Filter`
*/

public func BlendWithAlphaMask(_ inputBackgroundImage:CIImage, inputMaskImage: CIImage) -> Filter {
    return { image in
        let parameters: Parameters = [
            kCIInputImageKey: image,
            kCIInputBackgroundImageKey: inputBackgroundImage,
            kCIInputMaskImageKey: inputMaskImage
        ]
        let filter = CIFilter(name:FilterName.BlendWithAlphaMask.rawValue, withInputParameters: parameters)
        return filter?.outputImage
    }
}

/**
- parameter inputBackgroundImage: The bottom image in the composition
- parameter inputMask: The image to apply as a mask
- returns: A closure of type `Filter`
*/
public func BlendWithMask(_ inputBackgroundImage:CIImage, inputMaskImage: CIImage) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey: image,
            kCIInputBackgroundImageKey: inputBackgroundImage,
            kCIInputMaskImageKey: inputMaskImage
        ]
        let filter = CIFilter(name:FilterName.BlendWithMask.rawValue, withInputParameters: parameters)
        return filter?.outputImage
    }
}

/**
- parameter options: An instance of `BloomOptions`
- returns: A closure of type `Filter`
*/

public func Bloom(_ options: BloomOptions) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey: image,
            kCIInputRadiusKey: options.inputRadius,
            kCIInputIntensityKey: options.inputIntensity
        ] as [String : Any]
        let filter = CIFilter(name:FilterName.Bloom.rawValue, withInputParameters: parameters)
        return filter?.outputImage
    }
}

/**
- parameter options: An instance of `Convolution3X3Options`
- returns: A closure of type `Filter`
*/

public func Convolution3X3(_ options: Convolution3X3Options) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey: image,
            "inputWeights": options.inputWeights.vector(),
            "inputBias": options.inputBias
        ] as [String : Any]
        let filter = CIFilter(name:FilterName.Convolution3X3.rawValue, withInputParameters: parameters)
        return filter?.outputImage
    }
}

/**
- parameter options: An instance of `Convolution5X5Options`
- returns: A closure of type `Filter`
*/

public func Convolution5x5(_ options: Convolution5X5Options) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey: image,
            "inputWeights": options.inputWeights.vector(),
            "inputBias": options.inputBias
        ] as [String : Any]
        let filter = CIFilter(name:FilterName.Convolution5X5.rawValue, withInputParameters: parameters)
        return filter?.outputImage
    }
}

/**
- parameter options: An instance of `Convolution9Options`
- returns: A closure of type `Filter`
*/

public func Convolution9Horizontal(_ options: Convolution9Options) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey: image,
            "inputWeights": options.inputWeights.vector(),
            "inputBias": options.inputBias
        ] as [String : Any]
        let filter = CIFilter(name:FilterName.Convolution9Horizontal.rawValue, withInputParameters: parameters)
        return filter?.outputImage
    }
}

/**
- parameter options: An instance of `Convolution9Options`
- returns: A closure of type `Filter`
*/

public func Convolution9Vertical(_ options: Convolution9Options) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey: image,
            "inputWeights": options.inputWeights.vector(),
            "inputBias": options.inputBias
        ] as [String : Any]
        let filter = CIFilter(name:FilterName.Convolution9Vertical.rawValue, withInputParameters: parameters)
        return filter?.outputImage
    }
}

/**
- parameter options: An instance of `BloomOptions`
- returns: A closure of type `Filter`
*/

public func Gloom(_ options: BloomOptions) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey: image,
            kCIInputRadiusKey: options.inputRadius,
            kCIInputIntensityKey: options.inputIntensity
        ] as [String : Any]
        let filter = CIFilter(name:FilterName.Gloom.rawValue, withInputParameters: parameters)
        return filter?.outputImage
    }
}

/**
- parameter options: An instance of `HighlightShadowOptions`
- returns: A closure of type `Filter`
*/

public func HighlightShadowAdjust(_ options: HighlightShadowOptions) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey: image,
            "inputHighlightAmount": options.inputHighlightAmount,
            "inputShadowAmount": options.inputShadowAmount,
            kCIInputRadiusKey: options.inputRadius
        ] as [String : Any]
        let filter = CIFilter(name:FilterName.HighlightShadowAdjust.rawValue, withInputParameters: parameters)
        return filter?.outputImage
    }
}

/**
- parameter options: An instance of `PixellateOptions`
- returns: A closure of type `Filter`
*/

public func Pixellate(_ options: PixellateOptions) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey: image,
            kCIInputCenterKey: options.inputCenter.vector(),
            kCIInputScaleKey: options.inputScale
        ] as [String : Any]
        let filter = CIFilter(name:FilterName.Pixellate.rawValue, withInputParameters: parameters)
        return filter?.outputImage
    }
}
