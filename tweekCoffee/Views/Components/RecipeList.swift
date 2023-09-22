//
//  RecipeList.swift
//  tweekCoffee
//
//  Created by tweekdev on 14/09/2023.
//

import SwiftUI

struct RecipeList: View {
    var recipes: [CoffeeRecipe]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(recipes) { recipe in
                    NavigationLink(destination: RecipeView(recipe: recipe)) {
                        RecipeCard(recipe: recipe)
                    }
                }
            }
        }
    }
}

struct RecipeList_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            RecipeList(recipes: CoffeeRecipe.all)
        }
    }
}

