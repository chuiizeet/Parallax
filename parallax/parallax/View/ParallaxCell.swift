//
//  ParallaxCell.swift
//  parallax
//
//  Created by imac on 5/2/19.
//  Copyright © 2019 JeguLabs. All rights reserved.
//

import UIKit

class ParallaxCell: UITableViewCell {
    
    
    @IBOutlet weak var itemImg: UIImageView!
    @IBOutlet weak var descLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }
    
    func configureCell(withImage image : UIImage, andDescription desc : String) {
        itemImg.image = image
        descLbl.text = desc
    }
    
    func setupParallax() {
        
    }



}
