//
//  IAPService.swift
//  Foodzilla
//
//  Created by DARRELL A PAYNE on 5/20/19.
//  Copyright © 2019 DARRELL A PAYNE. All rights reserved.
//

import Foundation
import StoreKit

protocol IAPServiceDelegate {
    func iapProductsLoaded()
}

class IAPService:NSObject, SKProductsRequestDelegate {
    
    var delegate: IAPServiceDelegate?
    
    static let instance = IAPService()
    var productIds = Set<String>()
    var productRequest = SKProductsRequest()
    var products = [SKProduct]()
    
    func loadProducts(){
        productIdToStringSet()
        requestProducts(forIds: productIds)
        
    }
    
    func productIdToStringSet() {
        productIds.insert(IAP_MEAL_ID)
        
    }
    
    func requestProducts(forIds ids: Set<String>){
        productRequest.cancel()
        productRequest = SKProductsRequest(productIdentifiers: ids)
        productRequest.delegate = self
        productRequest.start()
    }
    
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        self.products = response.products
        
        if products.count == 0 {
            requestProducts(forIds: productIds)
        } else {
            delegate?.iapProductsLoaded()
            print(products[0].localizedTitle)
        }
    }
}

