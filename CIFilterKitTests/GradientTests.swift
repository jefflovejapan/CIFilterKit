//
//  GradientTests.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 5/28/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Quick
import Nimble
import CIFilterKit

class GradientTests: QuickSpec {
    override func spec() {
        describe("The GaussianGradient filter") {
            it("should be able to generate an image") {
                let options = GaussianGradientOptions(inputCenter: XYPosition(x: 150.0, y: 300.0), inputColor0: CIColor(red: 0.2, green: 0.8, blue: 0.7), inputColor1: CIColor(red: 0.8, green: 0.2, blue: 0.1), inputRadius: 200.0)
                let outImg = GaussianGradient(options: options)
                expect(outImg).toNot(beNil())
            }
        }
        describe("The LinearGradient filter") {
            it("should be able to generate an image") {
                let options = LinearGradientOptions(inputPoint0: XYPosition(x: 150.0, y: 300.0),inputPoint1: XYPosition(x: 600.0, y: 800.0), inputColor0: CIColor(red: 0.2, green: 0.8, blue: 0.7), inputColor1: CIColor(red: 0.8, green: 0.2, blue: 0.1))
                let outImg = LinearGradient(options: options)
                expect(outImg).toNot(beNil())
            }
        }
        describe("The RadialGradient filter") {
            it("should be able to generate an image") {
                let options = RadialGradientOptions(inputCenter: XYPosition(x: 150.0, y: 300.0), inputRadius0: 300.0, inputRadius1: 800.0, inputColor0: CIColor(red: 0.2, green: 0.8, blue: 0.7), inputColor1: CIColor(red: 0.8, green: 0.2, blue: 0.1))
                let outImg = RadialGradient(options: options)
                expect(outImg).toNot(beNil())
            }
        }
        describe("The SmoothLinearGradient filter") {
            it("should be able to generate an image") {
                var options = SmoothLinearGradientOptions(inputPoint0: XYPosition(x: 150.0, y: 300.0),inputPoint1: XYPosition(x: 450.0, y: 900.0), inputColor0: CIColor(red: 0.2, green: 0.8, blue: 0.7), inputColor1: CIColor(red: 0.8, green: 0.2, blue: 0.1))
                options.inputPoint0 = XYPosition(x: 20.0, y: 200.0)
                let outImg = SmoothLinearGradient(options: options)
                expect(outImg).toNot(beNil())
            }
        }
    }
}
