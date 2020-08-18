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
    
    var three = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        let nib = UINib(nibName: "AboutTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "Sobre")
        
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 44

        // Do any additional setup after loading the view.
        phrases.append(one);
        phrases.append(two);
        phrases.append(three);
    }

}

//MARK: - TableView extension

extension PerfilViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return phrases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Sobre", for: indexPath) as! AboutTableViewCell
        
        cell.aboutLabel.numberOfLines = 0
        cell.aboutLabel.text = phrases[indexPath.row]
        
        return cell
    }
     
    // func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
         //
     //}

}
