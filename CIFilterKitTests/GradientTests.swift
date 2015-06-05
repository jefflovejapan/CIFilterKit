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
                let outImg = GaussianGradient(inputCenter: XYPosition(x: 150.0, y: 300.0), inputColor0: CIColor(red: 0.2, green: 0.8, blue: 0.7), inputColor1: CIColor(red: 0.8, green: 0.2, blue: 0.1), inputRadius: 200.0)
                expect(outImg).toNot(beNil())
            }
        }
        describe("The LinearGradient filter") {
            it("should be able to generate an image") {
                let outImg = LinearGradient(inputPoint0: XYPosition(x: 150.0, y: 300.0),inputPoint1: XYPosition(x: 600.0, y: 800.0), inputColor0: CIColor(red: 0.2, green: 0.8, blue: 0.7), inputColor1: CIColor(red: 0.8, green: 0.2, blue: 0.1))
                expect(outImg).toNot(beNil())
            }
        }
        describe("The RadialGradient filter") {
            it("should be able to generate an image") {
                let outImg = RadialGradient(inputCenter: XYPosition(x: 150.0, y: 300.0), inputRadius0: 300.0, inputRadius1: 800.0, inputColor0: CIColor(red: 0.2, green: 0.8, blue: 0.7), inputColor1: CIColor(red: 0.8, green: 0.2, blue: 0.1))
                expect(outImg).toNot(beNil())
            }
        }
        describe("The SmoothLinearGradient filter") {
            it("should be able to generate an image") {
                let outImg = SmoothLinearGradient(inputPoint0: XYPosition(x: 150.0, y: 300.0),inputPoint1: XYPosition(x: 450.0, y: 900.0), inputColor0: CIColor(red: 0.2, green: 0.8, blue: 0.7), inputColor1: CIColor(red: 0.8, green: 0.2, blue: 0.1))
                expect(outImg).toNot(beNil())
            }
        }

    }
}