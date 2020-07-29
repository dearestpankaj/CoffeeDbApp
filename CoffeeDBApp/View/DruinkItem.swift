//
//  DruinkItem.swift
//  CoffeeDBApp
//
//  Created by Pankaj Sachdeva on 26/07/20.
//  Copyright © 2020 Pankaj Sachdeva. All rights reserved.
//

import SwiftUI

struct DrinkItem: View {
    var drink: Drink
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
            Image(drink.imageName)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
                .cornerRadius(10)
                .shadow(radius: 10)
            VStack(alignment: .leading, spacing: 20) {
                Text(drink.name)
                    .foregroundColor(Color.primary).font(.headline)
                Text(drink.description)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(
                        .leading).lineLimit(12)
                    .frame(height: 40)
            }
        }
    }
}

struct DrinkItem_Previews: PreviewProvider {
    static var previews: some View {
        DrinkItem(drink: drinkData[2])
    }
}
