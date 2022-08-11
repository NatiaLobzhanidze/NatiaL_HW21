//
//  Model.swift
//  NatiaL_HW21
//
//  Created by Natia's Mac on 11.08.22.
//

import Foundation
import UIKit

struct Model: Codable {
    let name: Name
}
    
//    static func getAllCountries()-> [Model] {
//     return  [ Model(name: "USA"),
//        Model(name: "GEo"),
//        Model(name: "UK"),
//        Model(name: "PLn"),
//        Model(name: "Fance"),
//        Model(name: "Rus"),
//        Model(name: "UKR"),
//        Model(name: "ITaly"),
//        Model(name: "saqartvelo"),
//        Model(name: "arm")
//        ]
//    }


struct Name: Codable {
    let common, official: String
}
