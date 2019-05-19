//
//  DetailVC.swift
//  Foodzilla
//
//  Created by DARRELL A PAYNE on 5/18/19.
//  Copyright © 2019 DARRELL A PAYNE. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var itemNameLbl: UILabel!
    @IBOutlet weak var itemPriceLbl: UILabel!
    @IBOutlet weak var uglyAdView: UIView!
    @IBOutlet weak var buyItemBtn: UIButton!
    @IBOutlet weak var hideAdsBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func buyBtnWasPressed(_ sender: Any) {
        
    }
    @IBAction func hideAdsBtnWasPressed(_ sender: Any) {
        
    }
    
    @IBAction func closeBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
