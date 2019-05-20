//
//  Item.swift
//  Foodzilla
//
//  Created by DARRELL A PAYNE on 5/18/19.
//  Copyright © 2019 DARRELL A PAYNE. All rights reserved.
//

import UIKit

class Item {
    
    public private(set) var image: UIImage
    public private(set) var name: String
    public private(set) var price: Double
    
    init(image: UIImage, name:String, price: Double) {
        self.image = image
        self.name = name
        self.price = price
    }
}
