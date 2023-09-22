import SwiftUI

struct CoffeeRatioCalculatorView: View {
    @State private var coffeeWeight = ""
    @State private var waterWeight = ""
    @State private var ratio = ""
    @State private var isCalculatingFromRatio = false

    var body: some View {
        
        VStack {
            
            Text("Calculateur de Ratio de Café")
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
                .foregroundColor(Color("CoffeeGreen"))
                .padding()

            if isCalculatingFromRatio {
                TextField("Ratio (1:X)", text: $ratio)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .keyboardType(.decimalPad)
                TextField("Poids du café (g)", text: $coffeeWeight)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .keyboardType(.numberPad)
            } else {
                TextField("Poids du café (g)", text: $coffeeWeight)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .keyboardType(.numberPad)

                TextField("Poids de l'eau (g)", text: $waterWeight)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .keyboardType(.numberPad)
            }

            Toggle("Calculer à partir du ratio", isOn: $isCalculatingFromRatio)
                .padding()

            Button(action: calculateRatioOrWater) {
                Text(isCalculatingFromRatio ? "Calculer les Poids" : "Calculer le Ratio")
                    .padding()
                    .background(Color("CoffeeOr"))
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            

            if isCalculatingFromRatio {
                Text("Café : \(coffeeWeight)g, Eau : \(waterWeight)g")
                    .font(.headline)
                    .padding()
            } else {
                Text("Ratio Café/Eau: 1:\(ratio)")
                    .font(.headline)
                    .padding()
            }
            
        }
    }

    func calculateRatioOrWater() {
        if isCalculatingFromRatio {
            if let coffeeWeight = Double(coffeeWeight), let x = Double(ratio.split(separator: ":").last ?? ""), x != 0 {
                let waterWeight = coffeeWeight * x
                self.waterWeight = String(format: "%.0f", waterWeight)
            } else {
                waterWeight = "Erreur"
            }
        } else {
            if let coffeeWeight = Double(coffeeWeight), let waterWeight = Double(waterWeight), waterWeight != 0 {
                let calculatedRatio = coffeeWeight / waterWeight
                ratio = String(format: "%.0f", 1 / calculatedRatio)
            } else {
                ratio = "Erreur"
            }
        }
    }
}

struct CoffeeRatioCalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeRatioCalculatorView()
    }
}
