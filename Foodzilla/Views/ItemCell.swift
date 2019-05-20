//
//  ItemCell.swift
//  Foodzilla
//
//  Created by DARRELL A PAYNE on 5/18/19.
//  Copyright © 2019 DARRELL A PAYNE. All rights reserved.
//

import UIKit

class ItemCell: UICollectionViewCell {
    
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var itemNameLbl: UILabel!
    @IBOutlet weak var itemPriceLbl: UILabel!
    
    func configureCell(forItem item: Item){
        itemImageView.image = item.image
        itemNameLbl.text = item.name
        itemPriceLbl.text = String(describing: item.price)
    }
}
