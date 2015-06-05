//
//  StylizeFilters.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 6/2/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Foundation

public func BlendWithAlphaMask(#inputBackgroundImage:CIImage?, #inputMaskImage: CIImage?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            kCIInputBackgroundImageKey: inputBackgroundImage,
            kCIInputMaskImageKey: inputMaskImage
            ])
        let filter = CIFilter(name:"CIBlendWithAlphaMask", withInputParameters: parameters)
        return filter.outputImage
    }
}
public func BlendWithMask(#inputBackgroundImage:CIImage?, #inputMaskImage: CIImage?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            kCIInputBackgroundImageKey: inputBackgroundImage,
            kCIInputMaskImageKey: inputMaskImage
            ])
        let filter = CIFilter(name:"CIBlendWithMask", withInputParameters: parameters)
        return filter.outputImage
    }
}
public func Bloom(#inputRadius: Double?, #inputIntensity: Double?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            kCIInputRadiusKey: inputRadius,
            kCIInputIntensityKey: inputIntensity
            ])
        let filter = CIFilter(name:"CIBloom", withInputParameters: parameters)
        return filter.outputImage
    }
}
public func Convolution3x3(#inputWeights: ConvolutionMatrix3x3?, #inputBias: Double?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            "inputWeights": inputWeights?.vector(),
            "inputBias": inputBias
            ])
        let filter = CIFilter(name:"CIConvolution3X3", withInputParameters: parameters)
        return filter.outputImage
    }
}
public func Convolution5x5(#inputWeights:ConvolutionMatrix5x5?, #inputBias: Double?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            "inputWeights": inputWeights?.vector(),
            "inputBias": inputBias
            ])
        let filter = CIFilter(name:"CIConvolution5X5", withInputParameters: parameters)
        return filter.outputImage
    }
}
public func Convolution9Horizontal(#inputWeights:ConvolutionVector9?, #inputBias: Double?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            "inputWeights": inputWeights?.vector(),
            "inputBias": inputBias
            ])
        let filter = CIFilter(name:"CIConvolution9Horizontal", withInputParameters: parameters)
        return filter.outputImage
    }
}
public func Convolution9Vertical(#inputWeights:ConvolutionVector9?, #inputBias: Double?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            "inputWeights": inputWeights?.vector(),
            "inputBias": inputBias
            ])
        let filter = CIFilter(name:"CIConvolution9Vertical", withInputParameters: parameters)
        return filter.outputImage
    }
}
public func Gloom(#inputRadius: Double?, #inputIntensity: Double?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            kCIInputRadiusKey: inputRadius,
            kCIInputIntensityKey: inputIntensity
            ])
        let filter = CIFilter(name:"CIGloom", withInputParameters: parameters)
        return filter.outputImage
    }
}
public func HighlightShadowAdjust(#inputHighlightAmount: Double?, #inputShadowAmount: Double?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            "inputHighlightAmount": inputHighlightAmount,
            "inputShadowAmount": inputShadowAmount
            ])
        let filter = CIFilter(name:"CIHighlightShadowAdjust", withInputParameters: parameters)
        return filter.outputImage
    }
}
public func Pixellate(#inputCenter: XYPosition?, #inputScale: Double?) -> Filter {
    return { image in
        let parameters = unwrapParams([
            kCIInputImageKey: image,
            kCIInputCenterKey: inputCenter?.vector(),
            kCIInputScaleKey: inputScale
            ])
        let filter = CIFilter(name:"CIPixellate", withInputParameters: parameters)
        return filter.outputImage
    }
}