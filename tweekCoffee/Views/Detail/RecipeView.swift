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
        ZStack {
            Color("CoffeeWhite").edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 0) {
                AsyncImage(url: URL(string: recipe.image)) { image in
                    image
                        .resizable()
                        .frame(height: UIScreen.main.bounds.height / 3)
                    
                    
                } placeholder: {
                    Image(systemName: "https://www.maxicoffee.com/fstrz/r/s/www.maxicoffee.com/blog/wp-content/uploads/2017/08/faire-du-cafe-filtre-comment.jpg?frz-v=126")
                        .resizable()
                        .frame(height: UIScreen.main.bounds.height / 3)
                        .foregroundColor(.white.opacity(0.7))
                }
                .offset(y: 30)
                .padding(.top, -30)
                
                
                ScrollView(.vertical, showsIndicators: false)  {
                    
                    VStack {
                        HStack {
                            Text(recipe.name)
                                .font(.title)
                                .bold()
                                .foregroundColor(.black)
                            Spacer()
                        }
                        .padding(.top, 25)
                        .padding(.bottom, 1)
                        
                        HStack {
                            
                            HStack(alignment: .center, spacing: 15) {
                                
                                HStack(spacing: 15) {
                                    Image(systemName: "clock")
                                        .foregroundColor(.orange)
                                    
                                    Text(recipe.brewingTimeFormatted)
                                    
                                }
                                .foregroundColor(.gray)
                                
                                HStack(spacing: 15) {
                                    Image(systemName: "drop.degreesign")
                                        .foregroundColor(.orange)
                                    
                                    Text(String(recipe.coffeeWaterRatio))
                                    
                                }
                                .foregroundColor(.gray)
                                
                                HStack(spacing: 15) {
                                    Image(systemName: "drop.degreesign")
                                        .foregroundColor(.orange)
                                    Text("\(recipe.waterQuantityInGrams) g")
                                }
                                .foregroundColor(.gray)
                                
                                HStack(spacing: 15) {
                                    Image(systemName: "scalemass")
                                        .foregroundColor(.orange)
                                    Text("\(recipe.coffeeQuantityInGrams) g")
                                }
                                .foregroundColor(.gray)
                                
                            }
                            
                            
                            
                            Spacer()
                            
                            
                        }
                        
                        HStack {
                            Text("Ingredients")
                                .font(.title2)
                                .bold()
                                .foregroundColor(.black)
                            Spacer()
                        }
                        .padding(.top, 25)
                        
                        HStack {
                            HStack(alignment: .center, spacing: 15) {
                                VStack(alignment: .leading, spacing: 10) {
                                    ForEach(recipe.ingredients, id: \.self) { ingredient in
                                        HStack {
                                            Image(systemName: "circle.fill")
                                                .resizable()
                                                .frame(width: 10, height: 10)
                                                .foregroundColor(.orange)
                                                .padding(.trailing, 5)
                                            
                                            Text(ingredient)
                                        }
                                        
                                    }
                                }
                            }
                            Spacer()
                            
                            
                        }
                        HStack {
                            Text("Instructions")
                                .font(.title2)
                                .bold()
                                .foregroundColor(.black)
                            Spacer()
                        }
                        .padding(.top, 25)
                        
                        HStack {
                            HStack(alignment: .center, spacing: 15) {
                                VStack(alignment: .leading, spacing: 10) {
                                    ForEach(recipe.steps, id: \.self) { step in
                                        HStack {
                                            Image(systemName: "circle.fill")
                                                .resizable()
                                                .frame(width: 10, height: 10)
                                                .foregroundColor(.orange)
                                                .padding(.trailing, 5)
                                            
                                            Text(step)
                                                .lineLimit(nil) // Permet au texte de se développer et d'être complètement visible
                                            
                                            
                                        }
                                        
                                    }
                                }
                            }.fixedSize(horizontal: false, vertical: true) // Permet au texte de se développer verticalement
                            
                            Spacer()
                            
                            
                        }
                    }
                   
                }.padding(.horizontal, 20)
                .background(Color("CoffeeWhite"))
                .clipShape(Corners())

                Spacer()
            }
            .edgesIgnoringSafeArea(.top)
            
        }

    }
}

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .rounded))
            .foregroundColor(Color("CoffeeGreen"))
            .padding(8)
    }
}

struct Corners: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 35, height: 35))
        
        return Path(path.cgPath)
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: CoffeeRecipe.all[0])
    }
}
