//
//  AlamofireOAuth1Tests.swift
//  AlamofireOAuth1Tests
//
//  Created by Hakon Hanesand on 4/28/15.
//  Copyright (c) 2015 Hakon Hanesand. All rights reserved.

import Quick
import Nimble
import AlamofireOAuth1
import Alamofire
import UIKit

class OAuthSpec: QuickSpec {
    override func spec() {
        describe("The OAuth1 Specification") {
            describe("nonce generation") {
                it("generates a unique stream of strings that have length 32") {
                    var set: Set<String> = []
                    
                    for index in 1...100 {
                        let nonce = OAuth.generateNonceAndTimestamp().nonce
                        
                        expect(set.contains(nonce)).toNot(beTrue())
                        expect(count(nonce)).to(equal(32))
                    }
                }
            }
            
            let request = Factual.GetBarcode("BARCODEHERE").URLRequest
            println(request.URLString)
            
            describe("OAuth Request Setup") {
                it("should properly configure an NSURLRequest with OAuth headers") {
                    var request = Alamofire.request(Factual.GetBarcode("barcodeHERE"))
                }
            }
        }
    }
}