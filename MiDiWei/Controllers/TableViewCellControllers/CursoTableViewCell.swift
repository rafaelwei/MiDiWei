//
//  CursoTableViewCell.swift
//  MiDiWei
//
//  Created by Rafael Wei on 12/08/20.
//  Copyright © 2020 Rafael Wei. All rights reserved.
//

import UIKit

class CursoTableViewCell: UITableViewCell {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var courseNameLabel: UILabel!
    
    @IBOutlet weak var courseCardView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        contentView.addSubview(courseCardView)
        courseCardView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 30).isActive = true
        courseCardView.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -30).isActive = true
        courseCardView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 3).isActive = true
        courseCardView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -3).isActive = true
        courseCardView.layer.cornerRadius = 8
        courseCardView.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        courseCardView.layer.shadowRadius = 8
        courseCardView.layer.shadowOpacity = 0.5
        courseCardView.layer.shadowOffset = CGSize(width: 10, height: 10)

        
        myImageView.image = UIImage(named: "Engenharia")
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
