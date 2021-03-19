//
//  ViewController.swift
//  SearchController
//
//  Created by Akdag on 18.03.2021.
//

import UIKit

class ResultVC : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemOrange
    }
}

class ViewController: UIViewController ,UISearchResultsUpdating{
    
    let searchController = UISearchController(searchResultsController: ResultVC())

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Search"
        navigationItem.searchController = searchController
        searchController.searchResultsUpdater = self
        
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else {return}
        
        print(text)
    }


}

