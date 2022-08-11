//
//  ViewController.swift
//  NatiaL_HW21
//
//  Created by Natia's Mac on 11.08.22.
//

import UIKit

class ViewController: UIViewController {
    var allCountries = [Model]()
    
    lazy var tableView: UITableView = {
        let tv = UITableView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.delegate = self
        tv.dataSource = self
        tv.register(CountryTableViewCell.self, forCellReuseIdentifier: "CountryTableViewCell")
        return tv
    }()
    
    let apiManager = APIManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
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
}

 
