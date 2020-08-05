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
    @IBOutlet weak var searchContainerView: UIView!
    
    var cursos: [Curso] = []
    var searchController = UISearchController(searchResultsController: nil)
    
    var cursosDaBusca: [Curso] = []
    
    var isSearchBarEmpty: Bool {
        return searchController.searchBar.text?.isEmpty ?? true
    }
    
    var isFiltering: Bool {
      return searchController.isActive && !isSearchBarEmpty
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        cursos = Curso.fethCursos()

        searchContainerView.addSubview(searchController.searchBar)
        // 1
        searchController.searchResultsUpdater = self
        // 2
        searchController.obscuresBackgroundDuringPresentation = false
        // 3
        searchController.searchBar.placeholder = "Procurar cursos"
        // 4
        navigationItem.searchController = searchController
        // 5
        definesPresentationContext = true
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
        if isFiltering {
            return cursosDaBusca.count
        }
        return cursos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell" , for: indexPath)
        let curso: Curso
        if isFiltering {
          curso = cursosDaBusca[indexPath.row]
        } else {
          curso = cursos[indexPath.row]
        }
        print(curso)
        cell.textLabel?.text = curso.name
        
        return cell
    }
}

// MARK: - SearchView Funcs extension
extension SearchViewController: UISearchResultsUpdating {
    func filterContentForSearchText(_ searchText: String) {
        cursosDaBusca = cursos.filter { (curso: Curso) -> Bool in
        return curso.name.lowercased().contains(searchText.lowercased())
      }
      
      tableView.reloadData()
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        let searchBar = searchController.searchBar
        filterContentForSearchText(searchBar.text!)
    }
}
