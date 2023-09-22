//
//  RecipeRow.swift
//  tweekCoffee
//
//  Created by tweekdev on 15/09/2023.
//

import SwiftUI


struct RecipeRow: View {
    var recipe: CoffeeRecipe

    
    var body: some View {
        HStack(alignment: .center, spacing: 4) {
            VStack(alignment: .leading, spacing: 4){
                HStack() {
                    Image(systemName: "clock")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text(recipe.brewingTimeFormatted)
                        .bold()
                        .font(.title3)
                }
                Divider()
                HStack() {
                    Image(systemName: "drop.degreesign")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text(String(recipe.coffeeWaterRatio))
                        .bold()
                        .font(.title3)
                }
                Divider()
                HStack() {
                    Image(systemName: "drop.degreesign")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text(recipe.coffeeExtractionMethod)
                        .bold()
                        .font(.title3)
                }
            }
            VStack(alignment: .center, spacing: 16) {
                HStack {
                    Divider()
                }
                Image(systemName: "heart.circle")
                    .imageScale(.large)
                    .font(Font.title.weight(.ultraLight))
                HStack {
                    Divider()
                }

            }
            
            VStack(alignment: .trailing, spacing: 4) {
                HStack() {
                    Text("\(recipe.degrees)°")
                        .bold()
                        .font(.title3)
                    Spacer()
                    Image(systemName: "thermometer")
                        .resizable()
                        .modifier(IconModifier())
                    
                }
                Divider()
                HStack() {
                    Text("\(recipe.waterQuantityInGrams) g")
                        .bold()
                        .font(.title3)
                    Spacer()
                    Image(systemName: "drop.degreesign")
                        .resizable()
                        .modifier(IconModifier())
                    
                }
                Divider()
                HStack() {
                    Text("\(recipe.coffeeQuantityInGrams) g")
                        .bold()
                        .font(.title3)
                    Spacer()
                    Image(systemName: "cup.and.saucer")
                        .resizable()
                        .modifier(IconModifier())
                    
                }
            }
            
        }
        .font(.system(.callout, design: .rounded))
        .foregroundColor(Color("CoffeeGreen"))
        .padding(.horizontal)
        .frame(maxHeight: 220)
    }
}

struct IconModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 22, height: 22, alignment: .center)
            .padding()
            .background(Color(hue: 1.0, saturation: 0.0, brightness: 0.888))
            .cornerRadius(50)

        
    }
}

struct RecipeRow_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRow(recipe: CoffeeRecipe.all[0])
    
    }
}
