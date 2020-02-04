//
//  TableViewCell.swift
//  VacationInLisbon
//
//  Created by Vladyslav PALAMARCHUK on 1/20/20.
//  Copyright © 2020 Vladyslav PALAMARCHUK. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    let titleLabel = UILabel()
    let bgImage = UIImageView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let marginGuide = contentView.layoutMarginsGuide
 
        contentView.addSubview(bgImage)
        bgImage.translatesAutoresizingMaskIntoConstraints = false
        bgImage.leadingAnchor.constraint(equalTo: marginGuide.leadingAnchor).isActive = true
        bgImage.trailingAnchor.constraint(equalTo: marginGuide.trailingAnchor).isActive = true
        bgImage.topAnchor.constraint(equalTo: marginGuide.topAnchor).isActive = true
        bgImage.bottomAnchor.constraint(equalTo: marginGuide.bottomAnchor).isActive = true
        bgImage.heightAnchor.constraint(equalToConstant: 200).isActive = true
        bgImage.contentMode = .scaleAspectFill
        
        bgImage.layer.cornerRadius = 10
        bgImage.layer.borderWidth = 8
        bgImage.layer.borderColor = UIColor.clear.cgColor
        bgImage.clipsToBounds = true
   
        contentView.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerXAnchor.constraint(equalTo: marginGuide.centerXAnchor).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: marginGuide.centerYAnchor).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: bgImage.trailingAnchor).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: bgImage.leadingAnchor).isActive = true
        titleLabel.numberOfLines = 0
        titleLabel.textAlignment = .center
        titleLabel.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        titleLabel.layer.shadowOffset = CGSize(width: 3, height: 3)
        titleLabel.layer.shadowRadius = 5
        titleLabel.layer.shadowOpacity = 0.7
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
    }

}
