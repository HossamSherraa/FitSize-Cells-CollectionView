//
//  Cell.swift
//  FitSize-Cells
//
//  Created by Hossam on 3/24/20.
//  Copyright © 2020 Hossam. All rights reserved.
//

import UIKit
class Cell : UICollectionViewCell {
    let imageView = UIImageView()
    let label = UILabel()
    override init(frame: CGRect) {
        super.init(frame : .zero)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        imageView.contentMode = .scaleAspectFit
        contentView.addSubview(imageView)
        contentView.addSubview(label)
        NSLayoutConstraint.activate([imageView.topAnchor.constraint(equalToSystemSpacingBelow: contentView.topAnchor, multiplier: 1)  ,
                                     imageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor) ,
                                     label.leadingAnchor.constraint(equalToSystemSpacingAfter: contentView.leadingAnchor, multiplier: 1) ,
                                     label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
                                     label.topAnchor.constraint(equalTo: imageView.bottomAnchor , constant: 20) ,
                                     contentView.bottomAnchor.constraint(equalTo: label.bottomAnchor)])
        
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.imageView.image = nil
        self.label.text = nil
    }
    
    
    
    
    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
       let attributes = layoutAttributes
       
        layoutIfNeeded()
        attributes.frame.size.height = self.contentView.systemLayoutSizeFitting(UIView.layoutFittingExpandedSize, withHorizontalFittingPriority: .fittingSizeLevel, verticalFittingPriority: .fittingSizeLevel).height
        
        return attributes
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}


