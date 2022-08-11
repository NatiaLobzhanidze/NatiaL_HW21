//
//  ViewController.swift
//  NatiaL_HW21
//
//  Created by Natia's Mac on 11.08.22.
//

import UIKit

class ViewController: UIViewController, UISearchBarDelegate  {
 
    
    let mySearchBar: UISearchBar = {
        let sr = UISearchBar()
        sr.searchBarStyle = UISearchBar.Style.default
        sr.placeholder = " Search..."
        sr.sizeToFit()
        sr.isTranslucent = false
    
        return sr
    }()
    var bool = false
    var allCountries = [CountryModel]()
    var filteredCountries = [CountryModel]()
    
    lazy var tableView: UITableView = {
        let tv = UITableView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.delegate = self
        tv.dataSource = self
//        tv.tableHeaderView = mySearchBar
        tv.register(CountryTableViewCell.self, forCellReuseIdentifier: "CountryTableViewCell")
        return tv
    }()
    
    let apiManager = APIManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        filteredCountries = allCountries
//        view.addSubview(mySearchBar)
//        navigationItem.searchController = mySearchBar
        mySearchBar.delegate = self
        navigationItem.titleView = mySearchBar
        view.addSubview(tableView)
        addConstraintsToTV()
        apiManager.getNames{ result in
            self.allCountries = result
            self.tableView.reloadData()
        }
        
    }

    func addConstraintsToTV() {
    
        NSLayoutConstraint.activate([

            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20)
        ])
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredCountries = []
        if searchText == "" {
            bool = false 
            filteredCountries = allCountries
        } else {
            bool = true
            filteredCountries = allCountries.filter({$0.name.official.lowercased().contains(searchText.lowercased())})
        }
//        for elem in allCountries {
//            if elem.name.official.lowercased().contains(searchText.lowercased()) {
//                filteredCountries.append(elem)
//            }
//        }
        self.tableView.reloadData()
    }
}

 
