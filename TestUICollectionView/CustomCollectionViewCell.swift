//
//  CustomCollectionViewCell.swift
//  TestUICollectionView
//
//  Created by Robby Abaya on 12/18/17.
//  Copyright © 2017 Test. All rights reserved.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.backgroundColor = UIColor.lightGray
    }
    
    override func prepareForReuse() {
        for subview in contentView.subviews {
            subview.removeFromSuperview()
        }
    }
    
    func setImageByName(_ name:String) {
        guard let image = UIImage(named: name) else { return }
        let imageView = UIImageView(image: image)
        contentView.addSubview(imageView)
    }
}
