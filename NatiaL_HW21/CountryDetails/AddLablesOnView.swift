//
//  AddLablesOnView.swift
//  NatiaL_HW21
//
//  Created by Natia's Mac on 11.08.22.
//

import Foundation
import UIKit

extension CountryDetailsViewController {
    
    func addConstraintsToLabels() {
//        countrieName.text = country
//        capitalName.text = capital
       
        NSLayoutConstraint.activate([
            countrieName.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            countrieName.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 35),
            countrieName.heightAnchor.constraint(equalToConstant: 50),
            capitalName.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            capitalName.topAnchor.constraint(equalTo:flagImage.bottomAnchor, constant: 30),
            capitalName.heightAnchor.constraint(equalToConstant: 50)
            
        ])
    }
    
    
    
}
