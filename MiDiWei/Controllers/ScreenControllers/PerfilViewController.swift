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
    
    @IBOutlet weak var tableView: UITableView!
    
    var phrases: [String] = []
    
    var one = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    
    var two = "SDSB"
    
    var three = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        //nameLabel.text = "Pedro Miranda"
        
        //functionLabel.text = "Artista 3D"
        
        //courseLabel.text = "Design - 6º período"
        
        let nib = UINib(nibName: "AboutTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "Sobre")
        
        let nib2 = UINib(nibName: "ExperienceTableViewCell", bundle: nil)
        tableView.register(nib2, forCellReuseIdentifier: "Experiencia")
        
        let nib3 = UINib(nibName: "PlaceHolderTableViewCell", bundle: nil)
        tableView.register(nib3, forCellReuseIdentifier: "PlaceHolder")
        
        let nib4 = UINib(nibName: "JobsTableViewCell", bundle: nil)
        tableView.register(nib4, forCellReuseIdentifier: "Jobs")
        
        //tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 45

        // Do any additional setup after loading the view.
        phrases.append(one);
        phrases.append(two);
        phrases.append(three);
    }

}

//MARK: - TableView extension

extension PerfilViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if(indexPath.row == 0) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "PlaceHolder", for: indexPath) as! PlaceHolderTableViewCell
            
            cell.separatorInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
            cell.directionalLayoutMargins = .zero
            
            cell.myLabel.text = "Sobre"
            
            return cell
        }
        else if(indexPath.row == 1) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Sobre", for: indexPath) as! AboutTableViewCell
            
            cell.aboutLabel.numberOfLines = 0
            cell.aboutLabel.text = phrases[indexPath.row-1]
            
            return cell
        }
        else if(indexPath.row == 2){
            let cell = tableView.dequeueReusableCell(withIdentifier: "PlaceHolder", for: indexPath) as! PlaceHolderTableViewCell
            
            cell.separatorInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
            cell.directionalLayoutMargins = .zero
            
            cell.myLabel.text = "Experiência"
            
            return cell
        }
        else if(indexPath.row == 5) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "PlaceHolder", for: indexPath) as! PlaceHolderTableViewCell
            
            cell.separatorInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
            cell.directionalLayoutMargins = .zero
            
            cell.myLabel.text = "Trabalhos significatvos"
            
            return cell
        }
        else if(indexPath.row == 6){
            let cell = tableView.dequeueReusableCell(withIdentifier: "Jobs", for: indexPath) as! JobsTableViewCell
            
            return cell
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Experiencia", for: indexPath) as! ExperienceTableViewCell
            
            cell.myLabel.text = phrases[indexPath.row-2]
            
            if(indexPath.row % 2 == 1){
                cell.myIcon.image = UIImage(named: "Valley_of_the_End")
            }
            
            return cell
        }
    
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if(indexPath.row == 6){
            return 150
        }
        if(indexPath.row > 0 && indexPath.row != 2) {
            return 100
        }
        return UITableView.automaticDimension
    }

}
