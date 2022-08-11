//
//  APIManager.swift
//  NatiaL_HW21
//
//  Created by Natia's Mac on 11.08.22.
//

import Foundation
import UIKit

class APIManager {
    
    func getNames (complition: @escaping([Model]) -> (Void)){
        
        let urlString = "https://restcountries.com/v3.1/all"
        guard let url = URL(string: urlString) else { return }
        
        let session = URLSession.shared
        session.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            let decoder = JSONDecoder()
            let object = try! decoder.decode([Model].self, from: data)
            
            DispatchQueue.main.async {
                complition(object)
            }
            
            
        }.resume()
    }
}
