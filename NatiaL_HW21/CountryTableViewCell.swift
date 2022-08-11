//
//  CountryTableViewCell.swift
//  NatiaL_HW21
//
//  Created by Natia's Mac on 11.08.22.
//

import UIKit

class CountryTableViewCell: UITableViewCell {
    
    let titleLb: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(titleLb)
        setConstreintsToLbl()
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstreintsToLbl() {
        NSLayoutConstraint.activate([
            titleLb.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            titleLb.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            titleLb.widthAnchor.constraint(equalToConstant: 159),
            titleLb.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
}
