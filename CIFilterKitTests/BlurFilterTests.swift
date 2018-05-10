//
//  CIFilterKitTests.swift
//  CIFilterKitTests
//
//  Created by Jeffrey Blagdon on 5/16/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Quick
import Nimble
import CIFilterKit

class BlurFilterTests: QuickSpec {
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
        describe("The GaussianBlur filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = GaussianBlur(inputRadius: 0.5)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The MotionBlur filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = MotionBlur(options: MotionBlurOptions())
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The ZoomBlur filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = ZoomBlur(options: ZoomBlurOptions())
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
    }
}
