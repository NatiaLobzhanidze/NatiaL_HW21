//
//  DataSourcce.swift
//  NatiaL_HW21
//
//  Created by Natia's Mac on 11.08.22.
//

import Foundation
import UIKit

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        allCountries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CountryTableViewCell", for: indexPath) as? CountryTableViewCell
        else { return UITableViewCell() }
        let countryName = allCountries[indexPath.row]
        
        cell.titleLb.text = countryName.name.official
     
        
       // navigationController?.pushViewController(vc, animated: true)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let countryName = allCountries[indexPath.row]
        let imgUrl = URL(string: countryName.flags.png) ??  URL(string: "https://www.generationsforpeace.org/wp-content/uploads/2018/03/empty.jpg")
        let vc = CountryDetailsViewController()
        vc.flagImage.load(url: imgUrl!)
        vc.countrieName.text = countryName.name.official
        
        if let capital = countryName.capital {
            vc.capitalName.text =  capital.joined(separator: ",") }
       
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
}
