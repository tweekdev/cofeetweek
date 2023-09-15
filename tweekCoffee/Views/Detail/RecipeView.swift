//
//  RecipeView.swift
//  tweekCoffee
//
//  Created by tweekdev on 14/09/2023.
//

import SwiftUI

struct RecipeView: View {
    var recipe: CoffeeRecipe
    
    var body: some View {

        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center,spacing: 0) {
                VStack(alignment: .center,spacing: 0) {
                    AsyncImage(url: URL(string: recipe.image)) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .scaledToFill()
                    } placeholder: {
                        Image(systemName: "https://www.maxicoffee.com/fstrz/r/s/www.maxicoffee.com/blog/wp-content/uploads/2017/08/faire-du-cafe-filtre-comment.jpg?frz-v=126")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100, alignment: .center)
                            .foregroundColor(.white.opacity(0.7))
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                        
                    }
                    .frame(width: 400, height: 400)
                    .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
                    .cornerRadius(50)
                }
                
                Group {
                    Text(recipe.name)
                        .font(.system(.largeTitle, design: .rounded))
                        .bold()
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("CoffeeGreen"))
                    // Instruction
                    HStack(alignment: .center, spacing: 12) {
                        
                        HStack(alignment: .center, spacing: 2) {
                            Image(systemName: "clock")
                            Text("\(recipe.brewingTimeFormatted)")
                        }
                        HStack(alignment: .center, spacing: 2) {
                            Image(systemName: "cup.and.saucer")
                            Text("\(recipe.coffeeQuantityInGrams) g")
                        }
                        HStack(alignment: .center, spacing: 2) {
                            Image(systemName: "drop.degreesign")
                            Text("\(recipe.waterQuantityInGrams) g")
                        }
                    }.font(.footnote)
                        .foregroundColor(Color("CoffeeOr"))
                    
                    Text("Other Informations")
                        .font(.title3).bold().foregroundColor(.brown)
                    
                    
                    VStack(alignment: .leading, spacing: 10) {
                        
                        HStack {
                            VStack {
                                HStack(alignment: .center, spacing: 2) {
                                    Image(systemName: "drop.degreesign")
                                    Text("\(recipe.coffeeWaterRatio)")
                                }
                                HStack(alignment: .center, spacing: 2) {
                                    Image(systemName: "drop.degreesign")
                                    Text("\(recipe.coffeeExtractionMethod)")
                                }
                            }
                           
                            VStack {
                                HStack(alignment: .center, spacing: 2) {
                                    Image(systemName: "machine")
                                    Text("\(recipe.coffeeMachineType)")
                                }
                                HStack(alignment: .center, spacing: 2) {
                                    Image(systemName: "thermometer.high")
                                    Text("\(recipe.degrees)°")
                                }
                            }
                        }
                    }
                    Text("Ingredients")
                        .font(.title3).bold().foregroundColor(.brown)
                    
                    VStack(alignment: .leading) {
                        LazyHStack(spacing: 10) {
                            ForEach(Array(recipe.ingredients.enumerated()), id: \.element) { index, ingredient in
                                Badge(text: ingredient, backgroundColor: Color("CoffeeGreen"), textColor: .white)
                            }
                        }
                    }
                    Spacer()
                    // STEPS
                    Text("Instructions")
                        .font(.title3).bold().foregroundColor(.brown)
                    ForEach(recipe.steps, id: \.self) { step in
                        VStack(alignment: .center, spacing: 5) {
                            Image(systemName: "chevron.down.circle")
                                .resizable()
                                .frame(width: 36, height: 36, alignment: .center)
                                .imageScale(.large)
                                .font(Font.title.weight(.ultraLight))
                                .foregroundColor(.orange)
                            Text(step)
                                .lineLimit(nil)
                                .multilineTextAlignment(.center)
                                .foregroundColor(.brown)
                                .frame(minHeight: 100)
                        }
                    }
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
            }
        }.ignoresSafeArea(.container, edges: .top)
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: CoffeeRecipe.all[3])
    }
}
