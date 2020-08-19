//
//  MentorTableViewCell.swift
//  MiDiWei
//
//  Created by Larissa Diniz on 31/07/20.
//  Copyright © 2020 Rafael Wei. All rights reserved.
//

import UIKit

class MentorTableViewCell: UITableViewCell {

    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var CourseLabel: UILabel!
    @IBOutlet weak var DescriptionLabel: UILabel!
    @IBOutlet weak var MentorCardView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        contentView.addSubview(MentorCardView)
        // Initialization code
        MentorCardView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 30).isActive = true
        MentorCardView.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -40).isActive = true
        MentorCardView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 100).isActive = true
        MentorCardView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -100).isActive = true
        MentorCardView.layer.cornerRadius = 8
        MentorCardView.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        MentorCardView.layer.shadowRadius = 8
        MentorCardView.layer.shadowOpacity = 0.5
        MentorCardView.layer.shadowOffset = CGSize(width: 10, height: 10)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
