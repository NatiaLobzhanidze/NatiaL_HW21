//
//  SearchBarExtension.swift
//  NatiaL_HW21
//
//  Created by Natia's Mac on 11.08.22.
//

import Foundation
import UIKit

extension ViewController: UISearchResultsUpdating, UISearchBarDelegate {
    
    func filterCountries (with name: String) {
        filteredCountries = allCountries.filter{$0.name.official.lowercased().contains(name.lowercased())}
        
    }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        <#code#>
    }
    func updateSearchResults(for searchController: UISearchController) {
        
    }
    
    
    
}
