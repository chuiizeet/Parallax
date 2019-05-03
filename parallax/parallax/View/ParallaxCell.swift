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
        setupParallax()

    }
    
    func configureCell(withImage image : UIImage, andDescription desc : String) {
        itemImg.image = image
        descLbl.text = desc
    }
    
    func setupParallax() {
        
        let min = CGFloat(-100)
        let max = CGFloat(100)
        
        let xMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
        xMotion.minimumRelativeValue = min
        xMotion.maximumRelativeValue = max
        
        let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y", type: .tiltAlongVerticalAxis)
        yMotion.minimumRelativeValue = min
        yMotion.maximumRelativeValue = max
        
        let motionEffectGroup = UIMotionEffectGroup()
        motionEffectGroup.motionEffects = [xMotion, yMotion]
        
        itemImg.addMotionEffect(motionEffectGroup)
    }



}
