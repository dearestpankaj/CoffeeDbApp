//
//  Drink.swift
//  CoffeeDBApp
//
//  Created by Pankaj Sachdeva on 26/07/20.
//  Copyright © 2020 Pankaj Sachdeva. All rights reserved.
//

import SwiftUI

struct Drink: Hashable, Codable {
    var drinkId: Int
    var name: String
    var imageName: String
    var category: Category
    var description: String
    enum  Category: String, CaseIterable, Codable, Hashable {
        case hot = "hot"
        case cold = "cold"
    }
}
