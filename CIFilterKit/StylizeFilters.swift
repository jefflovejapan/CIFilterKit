//
//  StylizeFilters.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 6/2/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Foundation

public func BlendWithAlphaMask(#inputBackgroundImage:CIImage, #inputMaskImage: CIImage) -> Filter {
    return { image in
        let parameters: Parameters = [
            kCIInputImageKey: image,
            kCIInputBackgroundImageKey: inputBackgroundImage,
            kCIInputMaskImageKey: inputMaskImage
        ]
        let filter = CIFilter(name:FilterName.BlendWithAlphaMask.rawValue, withInputParameters: parameters)
        return filter.outputImage
    }
}
public func BlendWithMask(#inputBackgroundImage:CIImage, #inputMaskImage: CIImage) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey: image,
            kCIInputBackgroundImageKey: inputBackgroundImage,
            kCIInputMaskImageKey: inputMaskImage
        ]
        let filter = CIFilter(name:FilterName.BlendWithMask.rawValue, withInputParameters: parameters)
        return filter.outputImage
    }
}

public func Bloom(options: BloomOptions) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey: image,
            kCIInputRadiusKey: options.inputRadius,
            kCIInputIntensityKey: options.inputIntensity
        ]
        let filter = CIFilter(name:FilterName.Bloom.rawValue, withInputParameters: parameters)
        return filter.outputImage
    }
}

public func Convolution3X3(options: Convolution3X3Options) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey: image,
            "inputWeights": options.inputWeights.vector(),
            "inputBias": options.inputBias
        ]
        let filter = CIFilter(name:FilterName.Convolution3X3.rawValue, withInputParameters: parameters)
        return filter.outputImage
    }
}

public func Convolution5x5(options: Convolution5X5Options) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey: image,
            "inputWeights": options.inputWeights.vector(),
            "inputBias": options.inputBias
        ]
        let filter = CIFilter(name:FilterName.Convolution5X5.rawValue, withInputParameters: parameters)
        return filter.outputImage
    }
}

public func Convolution9Horizontal(options: Convolution9Options) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey: image,
            "inputWeights": options.inputWeights.vector(),
            "inputBias": options.inputBias
        ]
        let filter = CIFilter(name:FilterName.Convolution9Horizontal.rawValue, withInputParameters: parameters)
        return filter.outputImage
    }
}
public func Convolution9Vertical(options: Convolution9Options) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey: image,
            "inputWeights": options.inputWeights.vector(),
            "inputBias": options.inputBias
        ]
        let filter = CIFilter(name:FilterName.Convolution9Vertical.rawValue, withInputParameters: parameters)
        return filter.outputImage
    }
}
public func Gloom(options: BloomOptions) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey: image,
            kCIInputRadiusKey: options.inputRadius,
            kCIInputIntensityKey: options.inputIntensity
        ]
        let filter = CIFilter(name:FilterName.Gloom.rawValue, withInputParameters: parameters)
        return filter.outputImage
    }
}

public func HighlightShadowAdjust(options: HighlightShadowOptions) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey: image,
            "inputHighlightAmount": options.inputHighlightAmount,
            "inputShadowAmount": options.inputShadowAmount,
            kCIInputRadiusKey: options.inputRadius
        ]
        let filter = CIFilter(name:FilterName.HighlightShadowAdjust.rawValue, withInputParameters: parameters)
        return filter.outputImage
    }
}

public func Pixellate(options: PixellateOptions) -> Filter {
    return { image in
        let parameters = [
            kCIInputImageKey: image,
            kCIInputCenterKey: options.inputCenter.vector(),
            kCIInputScaleKey: options.inputScale
        ]
        let filter = CIFilter(name:FilterName.Pixellate.rawValue, withInputParameters: parameters)
        return filter.outputImage
    }
}