//
//  ReductionFilterTests.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 6/2/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Quick
import Nimble
import CIFilterKit

class ReductionFilterTests: QuickSpec {
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
        describe("The AreaHistogram filter") {
            it("should be able to filter a picture of Kevin Bacon") {
                let aFilter = AreaHistogram(inputExtent: kevinBaconCiImage.extent(), inputCount: 256, inputScale: 0.7)
                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The HistogramDisplayFilter filter") {
            it("should be able to filter a histogram of a picture of Kevin Bacon") {
                let histogramData = AreaHistogram(inputExtent: kevinBaconCiImage.extent(), inputCount: 256, inputScale: 1.0)
                let histogramDisplay = HistogramDisplayFilter(inputHeight: 500.0, inputHighLimit: nil, inputLowLimit: nil)
                let histogram = histogramData |>> histogramDisplay
                expect(histogram(kevinBaconCiImage)).toNot(beNil())
            }
        }
    }
}