//
//  MiscFunctionTests.swift
//  CIFilterKit
//
//  Created by Jeffrey Blagdon on 5/25/15.
//  Copyright (c) 2015 Jeffrey Blagdon. All rights reserved.
//

import Quick
import Nimble
import CIFilterKit

class MiscFunctionTests: QuickSpec {
    override func spec() {
        describe("The isCubeRootable function") {
            it("Should give the right answer for a variety of integers") {
                expect(countIsCube(8)).to(beTruthy())
                expect(countIsCube(1)).to(beTruthy())
                expect(countIsCube(27)).to(beTruthy())
                expect(countIsCube(-1)).to(beFalsy())
                expect(countIsCube(0)).to(beFalsy())
                expect(countIsCube(64)).to(beTruthy())
                expect(countIsCube(262144)).to(beTruthy())
            }
        }
    }
}