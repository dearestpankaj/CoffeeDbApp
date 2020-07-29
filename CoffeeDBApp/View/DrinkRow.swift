//
//  DrinkRow.swift
//  CoffeeDBApp
//
//  Created by Pankaj Sachdeva on 27/07/20.
//  Copyright © 2020 Pankaj Sachdeva. All rights reserved.
//

import SwiftUI

struct DrinkRow: View {
    var categoryName: String
    var drinks: [Drink]
    var body: some View {
        VStack(alignment: .leading) {
            Text(self.categoryName)
                .font(.title)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top) {
                     ForEach(self.drinks, id: \.name) { drink in
                        NavigationLink(destination: DrinkDetail(drink: drink)) {
                            DrinkItem(drink: drink).frame(width: 300).padding(.trailing, 30)
                        }
                     }
                 }
            }
        }.padding(.top)
    }
}

struct DrinkRow_Previews: PreviewProvider {
    static var previews: some View {
        DrinkRow(categoryName: "Hot Drinks", drinks: drinkData)
    }
}
