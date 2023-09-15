//
//  CoffeeMachine.swift
//  tweekCoffee
//
//  Created by tweekdev on 14/09/2023.
//

import Foundation



struct CoffeeMachine: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let extractionMethod: CoffeeExtractionMethod.RawValue
    let image: String
}


extension CoffeeMachine {
    static let all: [CoffeeMachine] = [
        CoffeeMachine(name: "Machine à expresso", description: "Une machine qui prépare un café concentré en utilisant une pression élevée.", extractionMethod: CoffeeExtractionMethod.espresso.rawValue, image: "espresso_image_url"),
        CoffeeMachine(name: "Machine à café filtre", description: "Une machine qui prépare un café doux et aromatique en filtrant l'eau à travers du café moulu.", extractionMethod: CoffeeExtractionMethod.drip.rawValue, image: "drip_coffee_image_url"),
        CoffeeMachine(name: "Presse française", description: "Une méthode d'extraction manuelle qui produit un café corsé.", extractionMethod: CoffeeExtractionMethod.frenchPress.rawValue, image: "french_press_image_url"),
        CoffeeMachine(name: "Verseur", description: "Une méthode d'extraction manuelle qui permet un contrôle précis du débit de l'eau.", extractionMethod: CoffeeExtractionMethod.pourOver.rawValue, image: "pour_over_image_url"),
        CoffeeMachine(name: "Aeropress", description: "Une méthode d'extraction manuelle qui utilise la pression de l'air pour préparer le café.", extractionMethod: CoffeeExtractionMethod.aeropress.rawValue, image: "aeropress_image_url"),
        CoffeeMachine(name: "Chemex", description: "Une méthode d'extraction manuelle qui produit un café propre et clair.", extractionMethod: CoffeeExtractionMethod.chemex.rawValue, image: "chemex_image_url"),
        CoffeeMachine(name: "Siphon", description: "Une méthode d'extraction qui utilise la pression et le vide pour préparer le café.", extractionMethod: CoffeeExtractionMethod.siphon.rawValue, image: "siphon_image_url"),
        CoffeeMachine(name: "Machine à café froid", description: "Une machine conçue pour préparer du café froid en infusant à froid pendant une longue période.", extractionMethod: CoffeeExtractionMethod.coldBrew.rawValue, image: "cold_brew_image_url")
  ]
}
