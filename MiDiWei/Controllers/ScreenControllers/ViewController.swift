//
//  ViewController.swift
//  MiDiWei
//
//  Created by Rafael Wei on 23/07/20.
//  Copyright © 2020 Rafael Wei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var mentores: [Mentor] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "MentorTableViewCell", bundle: nil), forCellReuseIdentifier: "TelaMentor")
        
        // Do any additional setup after loading the view.
        mentores = Mentor.fetchMentores()
    }

}

// MARK: - TableView extension

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mentores.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TelaMentor", for: indexPath) as! MentorTableViewCell
        
        let mentor = mentores[indexPath.row]
        
        print(mentor.name)
        print(mentor.course)
        print(mentor.description)
        cell.NameLabel.text = mentor.name
        cell.CourseLabel.text = mentor.course
        cell.DescriptionLabel.text = mentor.description
        
        return cell
    }
}


