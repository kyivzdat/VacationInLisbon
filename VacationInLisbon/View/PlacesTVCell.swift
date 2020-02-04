//
//  PlacesTVCell.swift
//  VacationInLisbon
//
//  Created by Vladyslav PALAMARCHUK on 1/20/20.
//  Copyright © 2020 Vladyslav PALAMARCHUK. All rights reserved.
//

import UIKit

class PlacesTVCell: UITableViewCell {
    
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var additionalLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        bgView.layer.cornerRadius = 15
        
        photoImageView.layer.cornerRadius = 15
        photoImageView.layer.borderWidth = 12
        photoImageView.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }

}
