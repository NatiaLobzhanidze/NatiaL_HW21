//
//  ImageViewExtension.swift
//  NatiaL_HW21
//
//  Created by Natia's Mac on 11.08.22.
//

import Foundation
import UIKit


extension UIImageView {
    
    func load(url: URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}

extension CountryDetailsViewController {
    
    func addConstraintsToImage() {
    
        NSLayoutConstraint.activate([
            flagImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            flagImage.topAnchor.constraint(equalTo: countrieName.bottomAnchor, constant: 50),
            flagImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            flagImage.heightAnchor.constraint(equalToConstant: 150)
        ])
        
    }
    
}
