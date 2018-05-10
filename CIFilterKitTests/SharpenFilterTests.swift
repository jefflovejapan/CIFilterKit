//
//  SharpenFilterTests.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 6/2/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Quick
import Nimble
import CIFilterKit

class SharpenFilterTests: QuickSpec {
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
        describe("The SharpenLuminance filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = SharpenLuminance(inputSharpness: 15.0)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The UnsharpMask filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let options = UnsharpMaskOptions(inputRadius: 50.0, inputIntensity: 75.0)
                let aFilter = UnsharpMask(options: options)
                let outImg = aFilter(kevinBaconCiImage)
                expect(outImg).toNot(beNil())
            }
        }
    }
}
