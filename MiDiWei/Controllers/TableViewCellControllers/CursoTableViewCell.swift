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
        
        myImageView.image = UIImage(named: "Engenharia")
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
