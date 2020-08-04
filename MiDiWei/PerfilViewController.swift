//
//  PerfilViewController.swift
//  MiDiWei
//
//  Created by Pedro Guilherme Figueiredo Miranda on 29/07/20.
//  Copyright © 2020 Rafael Wei. All rights reserved.
//

import UIKit


class PerfilViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var functionLabel: UILabel!
    
    @IBOutlet weak var courseLabel: UILabel!

    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "Sobre")

        // Do any additional setup after loading the view.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        if indexPath.row == 0{
//           let cell = tableView.dequeueReusableCell(withIdentifier: "Sobre", for: indexPath) as? TableViewCell
//            return cell!
//        } else if indexPath.row == 1{
//            let cell = tableView.dequeueReusableCell(withIdentifier: "Experiencia", for: indexPath) as? MentorTableViewCell
//            return cell!
//        } else if indexPath.row == 2{
//
//        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "Sobre", for: indexPath) as? TableViewCell
                  return cell!
//        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
            return 300
        }
        return 150

     

    }
    
   // func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //
    //}


}
