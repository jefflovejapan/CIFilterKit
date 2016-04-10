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
                let options = AreaHistogramOptions(inputExtent: kevinBaconCiImage.extent, inputCount: 256, inputScale: 0.7)
                let aFilter = AreaHistogram(options)

                expect(aFilter(kevinBaconCiImage)).toNot(beNil())
            }
        }
        describe("The HistogramDisplayFilter filter") {
            it("should be able to filter a histogram of a picture of Kevin Bacon") {
                let options = AreaHistogramOptions(inputExtent: kevinBaconCiImage.extent, inputCount: 256, inputScale: 1.0)
                let histogramData = AreaHistogram(options)
                var displayOptions = HistogramDisplayOptions()
                displayOptions.inputHeight = 500.0
                let histogramDisplay = HistogramDisplayFilter(displayOptions)
                let histogram = histogramData |>> histogramDisplay
                expect(histogram(kevinBaconCiImage)).toNot(beNil())
            }
        }
    }
}