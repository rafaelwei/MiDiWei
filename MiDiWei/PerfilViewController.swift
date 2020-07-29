//
//  PerfilViewController.swift
//  MiDiWei
//
//  Created by Pedro Guilherme Figueiredo Miranda on 29/07/20.
//  Copyright © 2020 Rafael Wei. All rights reserved.
//

import UIKit


class PerfilViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var functionLabel: UILabel!
    
    @IBOutlet weak var courseLabel: UILabel!

    @IBOutlet weak var profileImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Pedro Miranda"
        functionLabel.text = "Artista 3D"
        courseLabel.text = "Design - 6º período"
        profileImage.image = #imageLiteral(resourceName: "Naruto_Uzumaki_(Parte_I_-_HD).png")
        // Do any additional setup after loading the view.
    }


}
