//
//  CountryDetailsViewController.swift
//  NatiaL_HW21
//
//  Created by Natia's Mac on 11.08.22.
//

import UIKit

class CountryDetailsViewController: UIViewController {

    //Countrie name
    let countrieName: UILabel = {
        let lbl = UILabel()
        
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = .systemFont(ofSize: 30, weight: .semibold)
         return lbl
    }()
    

    
    // capital name
    let capitalName: UILabel = {
        let clbl = UILabel()
        
        clbl.translatesAutoresizingMaskIntoConstraints = false
        clbl.font = .systemFont(ofSize: 20, weight: .semibold)
         return clbl
    }()
    // image of flag
    lazy var flagImage: UIImageView = {
        let img = UIImageView()
        
        img.translatesAutoresizingMaskIntoConstraints = false
    
        return img
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(countrieName)
        view.addSubview(flagImage)
        view.addSubview(capitalName)
        
        addConstraintsToImage()
        addConstraintsToLabels()
    }
  
 
}
