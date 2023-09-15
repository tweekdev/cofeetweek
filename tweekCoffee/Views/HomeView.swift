import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack( alignment: .leading, spacing: 20) {
                    Text("My recipes")
                        .bold()
                        .font(.system(.title, design: .rounded))
                        .foregroundColor(Color("CoffeeGreen"))
                        .padding(.horizontal)
                    Text("\(CoffeeRecipe.all.count) \(CoffeeRecipe.all.count > 1 ? "recipes" : "recipe")")
                        .font(.headline)
                        .fontWeight(.medium)
                        .opacity(0.7)
                        .padding(.horizontal)
                        .foregroundColor(Color("CoffeeOr"))
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        RecipeList(recipes: CoffeeRecipe.all)
                    }
                    Spacer()
                }
                VStack( alignment: .leading, spacing: 20) {
                    Text("How to")
                        .bold()
                        .font(.system(.title, design: .rounded))
                        .foregroundColor(Color("CoffeeGreen"))
                        .padding(.horizontal)

                    ScrollView(.horizontal, showsIndicators: false) {
                        CoffeeMachineList(coffeeMachines: CoffeeMachine.all)

                    }

                }
            }
            .navigationTitle("Home")
        }
        .navigationViewStyle(.stack)
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

