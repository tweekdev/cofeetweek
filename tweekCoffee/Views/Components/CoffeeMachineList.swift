//
//  CoffeeMachineList.swift
//  tweekCoffee
//
//  Created by Théau Antoine on 12/09/2023.
//

import SwiftUI

struct CoffeeMachineList: View {
    var coffeeMachines: [CoffeeMachine]
    var body: some View {
        LazyHGrid(rows: [GridItem(.adaptive(minimum: 160), spacing: 15)], spacing: 15) {
            ForEach(coffeeMachines) { coffeeMachine in
                NavigationLink(destination: CoffeeMachineCard(machine: coffeeMachine)) {
                    CoffeeMachineCard(machine: coffeeMachine)

                }
            }
        }
        .padding(.top).padding(.horizontal)
    }
}

struct CoffeeMachineList_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeMachineList(coffeeMachines: CoffeeMachine.all)
    }
}
