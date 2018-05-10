//
//  StylizeFilterTests.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 6/2/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Quick
import Nimble
import CIFilterKit

class StylizeFilterTests: QuickSpec {
    override func spec() {
        var kevinBaconImg : UIImage!
        var kevinBaconCiImage: CIImage!
        beforeEach {
            let filePath = Bundle(for: self.classForCoder).path(forResource: "bacon", ofType: "jpg")!
            let imgData = FileManager.default.contents(atPath: filePath)!
            kevinBaconImg = UIImage(data: imgData)!
            expect(kevinBaconImg).toNot(beNil())
            kevinBaconCiImage = CIImage(cgImage: kevinBaconImg.cgImage!)
            expect(kevinBaconCiImage).toNot(beNil())
        }
        describe("The BlendWithAlphaMask filter") {
            it("should be able to filter a picture of Kevin Bacon") {

                let maskImgData = FileManager.default.contents(atPath: Bundle(for: self.classForCoder).path(forResource: "wutang", ofType: "png")!)!
                let maskCiImage = CIImage(cgImage: UIImage(data: maskImgData)!.cgImage!)
                let rhinoImgData = FileManager.default.contents(atPath: Bundle(for: self.classForCoder).path(forResource: "rhinoceros", ofType: "jpg")!)!
                let rhinoCiImage = CIImage(cgImage: UIImage(data: rhinoImgData)!.cgImage!)
                let aFilter = BlendWithAlphaMask(inputBackgroundImage: rhinoCiImage, inputMaskImage: maskCiImage)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The BlendWithMask filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let maskImgData = FileManager.default.contents(atPath: Bundle(for: self.classForCoder).path(forResource: "banana", ofType: "png")!)!
                let maskCiImage = CIImage(cgImage: UIImage(data: maskImgData)!.cgImage!)
                let rhinoImgData = FileManager.default.contents(atPath: Bundle(for: self.classForCoder).path(forResource: "rhinoceros", ofType: "jpg")!)!
                let rhinoCiImage = CIImage(cgImage: UIImage(data: rhinoImgData)!.cgImage!)
                let aFilter = BlendWithMask(inputBackgroundImage: rhinoCiImage, inputMaskImage: maskCiImage)
                
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The Bloom filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let options = BloomOptions(inputRadius: 10.0, inputIntensity: 50.0)
                let aFilter = Bloom(options: options)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The Convolution3X3 filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let weights = ConvolutionMatrix3X3(w00:0, w01:1, w02: 0, w10: 1, w11: 1, w12: 1, w20: 0, w21: 1, w22: 0)
                let options = Convolution3X3Options(inputWeights: weights, inputBias:0.25)
                let aFilter = Convolution3X3(options: options)
                let outImg = aFilter(kevinBaconCiImage)
                expect(outImg).toNot(beNil())
            }
        }
        describe("The Convolution5X5 filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let weights = ConvolutionMatrix5X5(w00: 0, w01: 0, w02: 0, w03: 0, w04: 0, w10: 0, w11: 0, w12: 0, w13: 0, w14: 0, w20: 0, w21: 0, w22: 0.33, w23: 0, w24: 0.33, w30: 0, w31: 0, w32: 0, w33: 0, w34: 0, w40: 0, w41: 0, w42: 0.33, w43: 0, w44: 0)
                var options = Convolution5X5Options()
                options.inputWeights = weights
                let aFilter = Convolution5x5(options: options)
                let outImg = aFilter(kevinBaconCiImage)
                let anotherImg = outImg.flatMap { UIImage(ciImage: $0) }
                expect(anotherImg).toNot(beNil())
            }
        }
        describe("The Convolution9Horizontal filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                var options = Convolution9Options()
                options.inputWeights = ConvolutionVector9(w0: 0, w1: 0.5, w2: 0.25, w3: 0, w4: 0, w5: 0, w6: 0.25, w7: 0, w8: 0)
                let aFilter = Convolution9Horizontal(options: options)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The Convolution9Vertical filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                var options = Convolution9Options()
                options.inputWeights = ConvolutionVector9(w0: 0, w1: 0.5, w2: 0.25, w3: 0, w4: 0, w5: 0, w6: 0.25, w7: 0, w8: 0)
                let aFilter = Convolution9Vertical(options: options)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The Gloom filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let options = BloomOptions(inputRadius: 20.0, inputIntensity: 2.0)
                let aFilter = Gloom(options: options)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The HighlightShadowAdjust filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                var options = HighlightShadowOptions()
                options.inputHighlightAmount = 2.0
                options.inputShadowAmount = 0.5
                let aFilter = HighlightShadowAdjust(options: options)
                let outImg = aFilter(kevinBaconCiImage)
                expect(outImg).toNot(beNil())
            }
        }
        describe("The Pixellate filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let x = Double(kevinBaconCiImage.extent.size.width / 2.0)
                let y = Double(kevinBaconCiImage.extent.size.height / 2.0)
                var options = PixellateOptions()
                options.inputCenter = XYPosition(x:x, y:y)
                let aFilter = Pixellate(options: options)

                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        
    }
}
