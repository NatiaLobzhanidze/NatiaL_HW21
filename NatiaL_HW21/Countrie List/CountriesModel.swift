//
//  Model.swift
//  NatiaL_HW21
//
//  Created by Natia's Mac on 11.08.22.
//

import Foundation
import UIKit

struct CountryModel: Codable {
    let name: Name
    let capital : [String]?
    let flags: CountrieFlag
}

struct Name: Codable {
    let common, official: String
}

struct CountrieFlag: Codable {
    let png: String
    let svg: String
}


