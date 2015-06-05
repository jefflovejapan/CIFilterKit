//
//  ColorEffectFilterTests.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 5/25/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Quick
import Nimble
import CIFilterKit

class ColorEffectFilterTests: QuickSpec {
    override func spec() {
        var kevinBaconImg : UIImage!
        var kevinBaconCiImage: CIImage!
        beforeEach {
            let filePath = NSBundle(forClass: self.classForCoder).pathForResource("bacon", ofType: "jpg")!
            let imgData = NSData(contentsOfFile: filePath)!
            kevinBaconImg = UIImage(data: imgData)!
            expect(kevinBaconImg).toNot(beNil())
            kevinBaconCiImage = CIImage(CGImage: kevinBaconImg.CGImage!)
            expect(kevinBaconCiImage).toNot(beNil())
        }
        describe("The ColorClamp filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = ColorClamp(inputMinComponents: RGBAComponents(r:10.0, g:10.0, b:10.0, a:10.0), inputMaxComponents: RGBAComponents(r:20.0, g:20.0, b:20.0, a:20.0))
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The ColorCrossPolynomial filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = ColorCrossPolynomial(
                    inputRedCoefficients: CrossPolynomialCoefficients(a0: 0.0, a1: 1.0, a2: 2.0, a3: 3.0, a4: 4.0, a5: 5.0, a6: 6.0, a7: 7.0, a8: 8.0, a9: 9.0),                inputGreenCoefficients: CrossPolynomialCoefficients(a0: 0.0, a1: 1.0, a2: 2.0, a3: 3.0, a4: 4.0, a5: 5.0, a6: 6.0, a7: 7.0, a8: 8.0, a9: 9.0),                inputBlueCoefficients: CrossPolynomialCoefficients(a0: 0.0, a1: 1.0, a2: 2.0, a3: 3.0, a4: 4.0, a5: 5.0, a6: 6.0, a7: 7.0, a8: 8.0, a9: 9.0)
                )
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The ColorCube filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let colorCubeData: [RGBAComponents] = [
                    RGBAComponents(r:20.0, g:15.0, b:10.0, a:5.0),
                    RGBAComponents(r:19.0, g:14.0, b:9.0, a:4.0),
                    RGBAComponents(r:18.0, g:13.0, b:8.0, a:3.0),
                    RGBAComponents(r:17.0, g:12.0, b:7.0, a:2.0),
                    RGBAComponents(r:16.0, g:11.0, b:6.0, a:1.0),
                    RGBAComponents(r:15.0, g:10.0, b:5.0, a:0.5),
                    RGBAComponents(r:15.0, g:10.0, b:5.0, a:0.5),
                    RGBAComponents(r:15.0, g:10.0, b:5.0, a:0.5)
                ]
                let aFilter = ColorCube(inputCube:colorCubeData)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The ColorCubeWithColorSpace filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let colorCubeData: [RGBAComponents] = [
                    RGBAComponents(r:20.0, g:15.0, b:10.0, a:5.0),
                    RGBAComponents(r:19.0, g:14.0, b:9.0, a:4.0),
                    RGBAComponents(r:18.0, g:13.0, b:8.0, a:3.0),
                    RGBAComponents(r:17.0, g:12.0, b:7.0, a:2.0),
                    RGBAComponents(r:16.0, g:11.0, b:6.0, a:1.0),
                    RGBAComponents(r:15.0, g:10.0, b:5.0, a:0.5),
                    RGBAComponents(r:15.0, g:10.0, b:5.0, a:0.5),
                    RGBAComponents(r:15.0, g:10.0, b:5.0, a:0.5)
                ]
                let colorSpace = CGColorSpaceCreateDeviceRGB()
                let aFilter = ColorCubeWithColorSpace(inputCube: colorCubeData, inputColorSpace: colorSpace)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The ColorInvert filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = ColorInvert()
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The ColorMap filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let inputGradientImage: CIImage = GaussianGradient(inputCenter:XYPosition(x:150.0, y:150.0), inputColor0:CIColor(red: 0.5, green: 0.25, blue: 0.75, alpha: 1.0), inputColor1:CIColor(red: 1.0, green: 0.55, blue: 0.25, alpha: 1.0), inputRadius:300.0)!
                let aFilter = ColorMap(inputGradientImage:inputGradientImage)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The ColorMonochrome filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = ColorMonochrome(inputColor:CIColor(red:0.25, green: 0.5, blue: 0.75, alpha: 1.0), inputIntensity: 0.5)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The ColorPolynomial filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let redVector = PolynomialCoefficients(a0: 0.0, a1: 0.0, a2: 0.0, a3: 0.4)
                let greenVector = PolynomialCoefficients(a0: 0.0, a1: 0.0, a2: 0.5, a3: 0.8)
                let blueVector = PolynomialCoefficients(a0: 0.0, a1: 0.0, a2: 0.5, a3: 1.0)
                let alphaVector = PolynomialCoefficients(a0: 0.0, a1: 1.0, a2: 1.0, a3: 1.0)
                let aFilter = ColorPolynomial(inputRedCoefficients: redVector, inputGreenCoefficients: greenVector, inputBlueCoefficients: blueVector, inputAlphaCoefficients: alphaVector)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The ColorPosterize filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = ColorPosterize(inputLevels:8.0)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The FalseColor filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let inputColor0 = CIColor(red:0.5, green: 0.75, blue: 0.0, alpha: 0.75)
                let inputColor1 = CIColor(red:1.0, green:0.1, blue: 0.2, alpha: 1.0)
                let aFilter = FalseColor(inputColor0:inputColor0, inputColor1: inputColor1)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The MaskToAlpha filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = MaskToAlpha()
                let outImg = aFilter(kevinBaconCiImage)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The MaximumComponent filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = MaximumComponent()
                let outImg = aFilter(kevinBaconCiImage)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The MinimumComponent filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = MinimumComponent()
                let outImg = aFilter(kevinBaconCiImage)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The PhotoEffectChrome filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = PhotoEffectChrome()
                let outImg = aFilter(kevinBaconCiImage)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The PhotoEffectFade filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = PhotoEffectFade()
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The PhotoEffectInstant filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = PhotoEffectInstant()
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The PhotoEffectMono filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = PhotoEffectMono()
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The PhotoEffectNoir filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = PhotoEffectNoir()
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The PhotoEffectProcess filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = PhotoEffectProcess()
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The PhotoEffectTonal filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = PhotoEffectTonal()
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The PhotoEffectTransfer filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = PhotoEffectTransfer()
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The SepiaTone filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = SepiaTone(inputIntensity:0.75)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The Vignette filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = Vignette(inputRadius:500.0, inputIntensity:0.8)
                let outImg = aFilter(kevinBaconCiImage)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The VignetteEffect filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = VignetteEffect(inputCenter:CIVector(x:150.0, y:150.0), inputIntensity:0.75, inputRadius:500.0)
                let outImg = aFilter(kevinBaconCiImage)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
    }
}


