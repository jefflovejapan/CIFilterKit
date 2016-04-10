//
//  GeneratorTests.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 5/27/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Quick
import Nimble
import CIFilterKit

class GeneratorTests: QuickSpec {
    override func spec() {
        describe("The AztecCodeGenerator filter") {
            it("should be able to generate an image") {
                let data = "o hai Leslie".dataUsingEncoding(NSUTF8StringEncoding)
                var outImg: CIImage?
                if let data = data {
                    outImg = AztecCodeGenerator(data, options:AztecCodeGeneratorOptions())
                }
                expect(outImg).toNot(beNil())
            }
        }
        describe("The CheckerboardGenerator filter") {
            it("should be able to generate an image") {
                let options = CheckerboardGeneratorOptions(inputCenter:XYPosition(x: 150.0, y: 150.0), inputColor0:CIColor(red: 0.5, green: 0.9, blue: 0.1), inputColor1:CIColor(red: 0.0, green: 0.4, blue: 0.8), inputWidth: 300.0, inputSharpness: 1.0)
                let outImg = CheckerboardGenerator(options)
                expect(outImg).toNot(beNil())
            }
        }
        describe("The Code128BarcodeGenerator filter") {
            it("should be able to generate an image") {
                let outImg = Code128BarcodeGenerator("blahblahsomemessage".dataUsingEncoding(NSASCIIStringEncoding)!, inputQuietSpace:nil)
                expect(outImg).toNot(beNil())
            }
        }
        describe("The ConstantColorGenerator filter") {
            it("should be able to generate an image") {
                let outImg = ConstantColorGenerator(CIColor(red: 0.2, green: 0.7, blue: 0.8))
                expect(outImg).toNot(beNil())
            }
        }
        describe("The QRCodeGenerator filter") {
            it("should be able to generate an image") {
                let outImg = QRCodeGenerator("Good morning".dataUsingEncoding(NSUTF8StringEncoding)!, inputCorrectionLevel:.M)
                expect(outImg).toNot(beNil())
            }
        }
        describe("The RandomGenerator filter") {
            it("should be able to generate an image") {
                let outImg = RandomGenerator()
                expect(outImg).toNot(beNil())
            }
        }
        describe("The StarShineGenerator filter") {
            it("should be able to generate an image") {
                let options = StarShineGeneratorOptions()
                let outImg = StarShineGenerator(options)
                expect(outImg).toNot(beNil())
            }
        }
        describe("The StripesGenerator filter") {
            it("should be able to generate an image") {
                let options = StripesGeneratorOptions(inputCenter:XYPosition(x: 200.0, y: 200.0), inputColor0: CIColor(red: 0.2, green: 0.2, blue: 0.6), inputColor1: CIColor(red: 0.9, green: 0.4, blue: 0.4), inputWidth: 90.0, inputSharpness: 0.6)
                let outImg = StripesGenerator(options)
                expect(outImg).toNot(beNil())
            }
        }
    }
}