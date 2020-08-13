//
//  ViewController.swift
//  MiDiWei
//
//  Created by Rafael Wei on 23/07/20.
//  Copyright © 2020 Rafael Wei. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "TelaMentor", for: indexPath) as? MentorTableViewCell
        return cell!
    }
    
    
    @IBOutlet weak var tableView: UITableView!
     

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "MentorTableViewCell", bundle: nil), forCellReuseIdentifier: "TelaMentor")
   //     self.tableView.register(MentorTableViewCell.self, forCellReuseIdentifier: "TelaMentor")
        // Do any additional setup after loading the view.
    }


}

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


