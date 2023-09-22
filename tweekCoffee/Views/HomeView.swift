import SwiftUI

struct HomeView: View {
    @State private var searchText = ""
       var filteredRecipes: [CoffeeRecipe] {
           if searchText.isEmpty {
               return CoffeeRecipe.all
           } else {
               return CoffeeRecipe.all.filter { recipe in
                   return recipe.name.localizedCaseInsensitiveContains(searchText)
               }
           }
       }
       var filteredMachines: [CoffeeMachine] {
           if searchText.isEmpty {
               return CoffeeMachine.all
           } else {
               return CoffeeMachine.all.filter { machine in
                   return machine.name.localizedCaseInsensitiveContains(searchText)
               }
           }
       }
    var body: some View {
        NavigationView {
            
            
            ZStack {
                VStack(spacing: 30) {
                    Text("CoffeeTweek")
                        .font(.title3)
                        .foregroundColor(.orange)
                        .bold()
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack( alignment: .leading, spacing: 20) {
                           
                            Text("What would you like to drink today?")
                                .bold()
                                .font(.system(.title, design: .rounded))
                                .foregroundColor(Color("CoffeeBlack"))
                            
                            SearchBar(searchText: $searchText)
                                .padding(.bottom)
                            
                            Text("Categories")
                                .font(.title2)
                                .bold()
                                .foregroundColor(Color("CoffeeBlack"))
                            
                            
                            
                            Text("My recipes")
                                .font(.title2)
                                .bold()
                                .foregroundColor(Color("CoffeeBlack"))
                        
                            ScrollView(.horizontal, showsIndicators: false) {
                                RecipeList(recipes: filteredRecipes)
                            }
                            Spacer()
                        }
                        VStack( alignment: .leading, spacing: 20) {
                            Text("How to")
                                .font(.title2)
                                .bold()
                                .foregroundColor(Color("CoffeeBlack"))
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                CoffeeMachineList(coffeeMachines: filteredMachines)
                                
                            }
                            
                        }
                    }
                }
                .padding(.horizontal, 20)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                
                
                
                
                
            }
            .background(
                LinearGradient(gradient: Gradient(colors: [Color("CoffeeWhite"), Color("CoffeeOr")]), startPoint: .top, endPoint: .bottom)
            )
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

