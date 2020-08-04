//
//  SearchViewController.swift
//  MiDiWei
//
//  Created by Rafael Wei on 04/08/20.
//  Copyright © 2020 Rafael Wei. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    @IBOutlet var tableView: UITableView!
    
    var cursos: [Curso] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        cursos = Curso.fethCursos()

        // Do any additional setup after loading the view.
    }
    

    override func viewWillAppear(_ animated: Bool) {
      super.viewWillAppear(animated)
      
      if let indexPath = tableView.indexPathForSelectedRow {
        tableView.deselectRow(at: indexPath, animated: true)
      }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

// MARK: - TableView Funcs Extension
extension SearchViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(cursos.count)
        return cursos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell" , for: indexPath)
        let curso: Curso
        curso = cursos[indexPath.row]
        print(curso)
        cell.textLabel?.text = curso.name
        
        return cell
    }
}
