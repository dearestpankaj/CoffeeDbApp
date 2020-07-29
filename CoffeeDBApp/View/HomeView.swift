//
//  ContentView.swift
//  CoffeeDBApp
//
//  Created by Pankaj Sachdeva on 26/07/20.
//  Copyright © 2020 Pankaj Sachdeva. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var categories: [String: [Drink]] {
        .init(
            grouping: drinkData, by: {$0.category.rawValue})
    }
    var body: some View {
        NavigationView {
            List {
                ForEach(categories.keys.sorted(), id: \String.self) { key in
                    DrinkRow(categoryName: "\(key) Drinks", drinks: self.categories[key]!)
                        .frame(height: 320)
                        .padding(.top)
                        .padding(.bottom)
                }
            }
        .navigationBarTitle(Text("COFFEE DB"))
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
